# Use a lightweight base image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=$PATH:/usr/local/go/bin:/opt/metasploit-framework/bin:/root/go/bin

# Update package lists and install essential packages
RUN apt-get update && apt-get install -y \
    sudo \
    python3 \
    python3-pip \
    python3-venv \
    git \
    curl \
    wget \
    nmap \
    dnsutils \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    llvm \
    libncurses5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev \
    net-tools \
    iputils-ping \
    tcpdump \
    jq \
    tmux \
    gnupg \
    tor \
    proxychains4 \
    vim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Install Metasploit using the alternative method
RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 755 msfinstall && \
    ./msfinstall

# Create necessary directories for Tor with appropriate permissions
RUN mkdir -p /run/tor && \
    chown -R debian-tor:debian-tor /run/tor

# Create a new user with sudo privileges
RUN useradd -m -s /bin/bash pentester && \
    echo 'pentester:pentester' | chpasswd && \
    usermod -aG sudo pentester

# Switch to the new user
USER pentester
WORKDIR /home/pentester

# Set up Metasploit environment
RUN msfdb init

# Switch back to root user for further installations
USER root

# Install Python packages in a virtual environment
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --no-cache-dir \
    requests \
    bs4 \
    lxml \
    beautifulsoup4 \
    scapy \
    pwntools \
    impacket

# Install Go for additional tools
RUN wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz && \
    rm go1.21.5.linux-amd64.tar.gz

# Clone and install Pentester Framework
RUN git clone https://github.com/trustedsec/ptf /opt/ptf && \
    cd /opt/ptf && \
    ./ptf --update-all

# Configure Proxychains to use Tor
RUN echo "strict_chain" > /etc/proxychains4.conf
RUN echo "proxy_dns" >> /etc/proxychains4.conf
RUN echo "tcp_read_time_out 15000" >> /etc/proxychains4.conf
RUN echo "tcp_connect_time_out 8000" >> /etc/proxychains4.conf
RUN echo "[ProxyList]" >> /etc/proxychains4.conf
RUN echo "socks5 127.0.0.1 9050" >> /etc/proxychains4.conf

# Ensure Tor starts automatically
RUN echo "sudo service tor start" >> /home/pentester/.bashrc

# Switch back to pentester user
USER pentester
WORKDIR /home/pentester

# Add a final check to ensure critical components are installed
RUN if ! command -v msfconsole > /dev/null; then \
        echo "Metasploit is missing. Installation may have failed."; \
    fi && \
    if ! command -v go > /dev/null; then \
        echo "Go is missing. Installation may have failed."; \
    fi

# Entrypoint for the container
ENTRYPOINT ["proxychains4", "/bin/bash"]
