# Access Control Testing (ACT) - Part 1

## 1. Test for User Enumeration
- **Method**: Test different errors based on user existence.
- **Tools**:
  - Burp Suite: Intruder to test for user enumeration.
- **Additional Notes**:
  - Look for differences in response time, error messages, and status codes.
  - Test login, password reset, and registration functionalities.
- **Outside the Box**:
  - Utilize automated scripts to test large sets of usernames.

## 2. Test Resilience to Password Guessing
- **Method**: Check if the account gets locked after too many attempts.
- **Tools**:
  - Hydra or Medusa for brute force testing.
- **Additional Notes**:
  - Ensure account lockout thresholds are reasonable.
  - Verify if lockout duration is sufficient to prevent brute force attacks.
- **Outside the Box**:
  - Test if different user agents can bypass lockout mechanisms.

## 3. Test Password Creation Strength
- **Method**: Ensure passwords are not case-sensitive and check for minimum and maximum characters (e.g., `{1, 6}`, etc.).
- **Tools**:
  - John the Ripper for testing password strength.
- **Additional Notes**:
  - Test for common passwords and dictionary attacks.
  - Check if password policy includes special characters, numbers, and uppercase letters.
- **Outside the Box**:
  - Check if the application accepts Unicode characters to bypass restrictions.

## 4. Test Account Recovery Functionality
- **Method**: How is it recovered? Methods in place to stop attackers from changing email? Can you recover from a different email?
- **Tools**:
  - Burp Suite: Repeater to test recovery workflows.
- **Additional Notes**:
  - Ensure multi-factor authentication (MFA) is required for account recovery.
  - Test for secure implementation of password reset tokens.
- **Outside the Box**:
  - Check if recovery tokens can be reused.

## 5. Test "Remember Me" Functionality
- **Method**: Does it ever expire? Check for cookie exploits.
- **Tools**:
  - Cookie Editor browser extension to modify cookies.
- **Additional Notes**:
  - Ensure "Remember Me" tokens have a reasonable expiry time.
  - Test if tokens are invalidated after logout.
- **Outside the Box**:
  - Try accessing the application from a different IP address with the same token.

## 6. Test Impersonation Functionality
- **Method**: Can you pretend to be other users? Can session cookies be stolen? Does it utilize anti-cross-site forgery (CSRF)?
- **Tools**:
  - Burp Suite: Proxy and Repeater.
- **Additional Notes**:
  - Ensure CSRF tokens are implemented correctly.
  - Test if session tokens are invalidated on logout.
- **Outside the Box**:
  - Test if sensitive actions require re-authentication.

## 7. Test Username Uniqueness
- **Method**: Generated for you or user-created? Is it a number? Can the number be incremented?
- **Tools**:
  - Burp Suite: Intruder to test for predictable usernames.
- **Additional Notes**:
  - Ensure usernames cannot be easily guessed or incremented.
  - Test if usernames are case-insensitive.
- **Outside the Box**:
  - Try using special characters in usernames to test for encoding issues.

## 8. Check Unsure Distribution of Credentials
- **Method**: How are logins processed? (HTTP? POST?) Are they included in the URL? (BAD)
- **Tools**:
  - Burp Suite: Proxy to inspect requests.
- **Additional Notes**:
  - Ensure credentials are sent over HTTPS.
  - Verify that credentials are not included in URLs.
- **Outside the Box**:
  - Check if login credentials are stored in browser history.

## 9. Test for Fail-Open Conditions
- **Method**: Launch fails but still passes the user through.
- **Tools**:
  - Burp Suite: Proxy to manipulate requests.
- **Additional Notes**:
  - Ensure error handling does not bypass security controls.
  - Test for fallback mechanisms that may be insecure.
- **Outside the Box**:
  - Try modifying HTTP status codes in responses to see if it affects access control.

## 10. Multi-Stage Mechanisms
- **Method**: Does it use multi-step? (user-next-pass-login) Can you bypass steps by going straight to the next page?
- **Tools**:
  - Burp Suite: Repeater to test multi-stage processes.
- **Additional Notes**:
  - Ensure each step requires proper authentication.
  - Test if sessions are maintained correctly between steps.
- **Outside the Box**:
  - Check if bypassing one step provides access to restricted areas.

---

# Access Control Testing (ACT) - Part 2

## 11. Are Tokens Predictable?
- **Method**: Burp Suite Sequencer tool: Is the value random enough?
- **Tools**:
  - Burp Suite: Sequencer.
- **Additional Notes**:
  - Ensure tokens are sufficiently random and unique.
  - Test token generation under different conditions.
- **Outside the Box**:
  - Check if tokens are reused or predictable over time.

## 12. Insecure Transfer of Tokens
- **Method**: Jump in with credentials. Can they be accessed through JavaScript?
- **Tools**:
  - Burp Suite: Proxy.
- **Additional Notes**:
  - Ensure tokens are transmitted over HTTPS.
  - Verify that tokens are not accessible via client-side scripts.
- **Outside the Box**:
  - Test if tokens are stored in browser local storage or session storage.

## 13. Disclosure of Tokens in Logs
- **Method**: Are they in browser cache or logs? Can you view logs by adding your own info?
- **Tools**:
  - Burp Suite: Proxy.
- **Additional Notes**:
  - Ensure sensitive tokens are not logged in server logs or browser cache.
  - Test logging configurations for sensitive data.
- **Outside the Box**:
  - Check if tokens are exposed in error messages.

## 14. Check Session Termination
- **Method**: Is there a timeout?
- **Tools**:
  - Burp Suite: Repeater to test session expiry.
- **Additional Notes**:
  - Ensure sessions are terminated after a period of inactivity.
  - Verify if manual logout invalidates the session.
- **Outside the Box**:
  - Test if sessions remain active across different devices or IP addresses.

## 15. Session Fixation
- **Method**: Can you hijack a user's session by using their cookie?
- **Tools**:
  - Burp Suite: Proxy.
- **Additional Notes**:
  - Ensure session tokens are regenerated on login.
  - Test if session tokens are invalidated after password changes.
- **Outside the Box**:
  - Check if sessions are tied to specific user agents or IP addresses.

## 16. Cross-Site Forgery
- **Method**: Can certain actions be performed from other sites?
- **Tools**:
  - Burp Suite: Repeater to craft malicious requests.
- **Additional Notes**:
  - Ensure CSRF tokens are implemented for all state-changing actions.
  - Test if CSRF tokens are unique per session.
- **Outside the Box**:
  - Check if SameSite cookie attribute is set to prevent CSRF attacks.

## 17. Check Cookie Scope
- **Method**: Cookie scope to correct domain or can it be stolen?
- **Tools**:
  - Burp Suite: Proxy.
- **Additional Notes**:
  - Ensure cookies have secure and HTTP-only flags set.
  - Test cookie scope to ensure it is domain-specific.
- **Outside the Box**:
  - Check if cookies are accessible via JavaScript.

## 18. A.C.R. (Access Control Requirements)
- **Method**: How do you authenticate? Test access (e.g., params, Referrer).
- **Tools**:
  - Burp Suite: Repeater to test various access control mechanisms.
- **Additional Notes**:
  - Ensure proper access control checks are in place for all endpoints.
  - Test different user roles to verify access restrictions.
- **Outside the Box**:
  - Check if access control is enforced on both client-side and server-side.

