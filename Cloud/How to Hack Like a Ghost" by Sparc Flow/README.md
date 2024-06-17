# How to Hack Like a Ghost

Welcome to the "How to Hack Like a Ghost" directory. This collection of scripts is inspired by the book "How to Hack Like a Ghost" by Sparc Flow. The scripts are designed to assist in exploring and exploiting various cloud services and vulnerabilities, focusing on AWS, Azure, and GCP environments.

## Table of Contents

1. [S3 Bucket Enumeration and Data Extraction](#s3-bucket-enumeration-and-data-extraction)
2. [AWS IAM User Key Enumeration](#aws-iam-user-key-enumeration)
3. [Exploit EC2 Metadata Service for Credentials](#exploit-ec2-metadata-service-for-credentials)
4. [Kubernetes Config File Extraction](#kubernetes-config-file-extraction)
5. [Azure Storage Account Enumeration](#azure-storage-account-enumeration)
6. [GCP Bucket Access Enumeration](#gcp-bucket-access-enumeration)
7. [AWS Lambda Environment Variable Extraction](#aws-lambda-environment-variable-extraction)
8. [Docker Container Escape](#docker-container-escape)
9. [Exploit AWS Lambda to Gain Shell Access](#exploit-aws-lambda-to-gain-shell-access)
10. [Privilege Escalation in Kubernetes](#privilege-escalation-in-kubernetes)
11. [AWS EC2 User Data Extraction](#aws-ec2-user-data-extraction)
12. [AWS RDS Snapshot Enumeration](#aws-rds-snapshot-enumeration)
13. [Azure Key Vault Secret Extraction](#azure-key-vault-secret-extraction)
14. [GCP IAM Policy Binding Enumeration](#gcp-iam-policy-binding-enumeration)
15. [AWS SQS Queue Enumeration](#aws-sqs-queue-enumeration)
16. [Extract IAM Role Attached Policies](#extract-iam-role-attached-policies)
17. [Privilege Escalation via EC2 Roles](#privilege-escalation-via-ec2-roles)
18. [List Exposed Elastic Load Balancers](#list-exposed-elastic-load-balancers)
19. [Find Open Ports in Azure NSGs](#find-open-ports-in-azure-nsgs)
20. [Dump ECR Image Tags](#dump-ecr-image-tags)

## S3 Bucket Enumeration and Data Extraction
Enumerate S3 buckets and extract data.
```bash
Usage: s3_enum_extract.sh <bucket_name_list>
AWS IAM User Key Enumeration
Enumerate IAM user keys.

bash
Copy code
Usage: iam_key_enum.sh
Exploit EC2 Metadata Service for Credentials
Exploit EC2 metadata service to retrieve IAM credentials.

bash
Copy code
Usage: exploit_ec2_metadata.sh <instance_ip>
Kubernetes Config File Extraction
Extract Kubernetes config files from pods.

bash
Copy code
Usage: k8s_config_extract.sh <namespace> <pod_name>
Azure Storage Account Enumeration
Enumerate Azure storage accounts.

bash
Copy code
Usage: azure_storage_enum.sh
GCP Bucket Access Enumeration
Enumerate accessible GCP buckets.

bash
Copy code
Usage: gcp_bucket_enum.sh
AWS Lambda Environment Variable Extraction
Extract environment variables from AWS Lambda functions.

bash
Copy code
Usage: lambda_env_extract.sh
Docker Container Escape
Escape from a Docker container to the host.

bash
Copy code
Usage: docker_escape.sh <container_id>
Exploit AWS Lambda to Gain Shell Access
Exploit AWS Lambda to gain shell access.

bash
Copy code
Usage: lambda_shell.sh <function_name>
Privilege Escalation in Kubernetes
Escalate privileges in Kubernetes.

bash
Copy code
Usage: k8s_priv_esc.sh <pod_name> <namespace>
AWS EC2 User Data Extraction
Extract user data from EC2 instances.

bash
Copy code
Usage: ec2_userdata_extract.sh <instance_id>
AWS RDS Snapshot Enumeration
Enumerate RDS snapshots.

bash
Copy code
Usage: rds_snapshot_enum.sh
Azure Key Vault Secret Extraction
Extract secrets from Azure Key Vault.

bash
Copy code
Usage: azure_keyvault_extract.sh <vault_name>
GCP IAM Policy Binding Enumeration
Enumerate IAM policy bindings in GCP.

bash
Copy code
Usage: gcp_iam_policy_enum.sh <project_id>
AWS SQS Queue Enumeration
Enumerate AWS SQS queues.

bash
Copy code
Usage: sqs_enum.sh
Extract IAM Role Attached Policies
Extract attached policies for IAM roles.

bash
Copy code
Usage: iam_role_policies_extract.sh
Privilege Escalation via EC2 Roles
Privilege escalation via EC2 roles.

bash
Copy code
Usage: ec2_role_priv_esc.sh <instance_id>
List Exposed Elastic Load Balancers
List exposed Elastic Load Balancers.

bash
Copy code
Usage: list_exposed_elbs.sh
Find Open Ports in Azure NSGs
Find open ports in Azure NSGs.

bash
Copy code
Usage: azure_nsg_open_ports.sh <resource_group>
Dump ECR Image Tags
Dump ECR image tags.

bash
Copy code
Usage: ecr_image_tags.sh <repository_name>
License
This repository is licensed under the MIT License. See the LICENSE file for more information.

Disclaimer
These scripts are provided for educational purposes only. Use them at your own risk and always with proper authorization.

Feel free to contribute to this repository by submitting pull requests or opening issues. Happy hacking!
