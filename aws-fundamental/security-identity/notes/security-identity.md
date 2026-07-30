# Security and Identity Notes

## AWS Identity and Access Management (IAM)
- IAM manages users, groups, roles, and policies.
- Policy types:
  - Identity-based policies (attached to principals)
  - Resource-based policies (attached to resources)
  - Permissions boundaries, service control policies (SCPs), and session policies
- Best practices:
  - Use roles and temporary credentials instead of long-lived access keys
  - Apply least privilege and policy deny-by-default
  - Enable MFA for privileged users
  - Use IAM Access Analyzer to detect overly permissive policies

## AWS Organizations and SCPs
- AWS Organizations manages multiple AWS accounts centrally.
- Service control policies govern what actions are allowed across accounts.
- Use organizational units (OUs) for grouping workloads by environment or function.
- Consolidate billing and centralize governance.

## AWS Key Management Service (KMS)
- KMS manages encryption keys and cryptographic operations.
- Customer managed keys (CMKs), AWS managed keys, and AWS owned keys.
- Key usage scenarios:
  - Encrypt data at rest for S3, EBS, RDS, Lambda environment variables
  - Sign and verify with asymmetric keys
- KMS best practices:
  - Enable automatic key rotation
  - Use least privilege on key policies
  - Monitor usage with CloudTrail and CloudWatch logs

## AWS CloudTrail and GuardDuty
- CloudTrail logs AWS API calls for management and data events.
- Use data events to audit S3 object access, Lambda invocation, and DynamoDB operations.
- GuardDuty detects suspicious activity using threat intelligence and anomaly detection.
- Integrate with Security Hub for centralized security findings.

## AWS Config and Security Hub
- AWS Config tracks resource configuration and compliance over time.
- Use Config rules to enforce security best practices and drift detection.
- Security Hub aggregates findings from GuardDuty, Inspector, Config, and other services.
- Use automated remediation for common policy violations.

## AWS WAF and Shield
- AWS WAF protects web applications from common threats like SQL injection and XSS.
- Shield Standard is free and protects against common DDoS attacks.
- Shield Advanced adds DDoS cost protection, response team support, and additional metrics.
- Integrate WAF with CloudFront, ALB, API Gateway, and App Runner.
