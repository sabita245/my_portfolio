# Data Protection and Security

## Encryption
- Server-side encryption (SSE) options:
  - `SSE-S3`: Managed by AWS.
  - `SSE-KMS`: Uses AWS Key Management Service.
  - `SSE-C`: Customer-provided keys.
- Client-side encryption encrypts data before uploading to S3.

## Access Control
- Bucket policies manage access at the bucket level.
- IAM policies manage user and role permissions.
- ACLs are legacy and generally not recommended for new designs.

## Bucket Policies
- Use JSON policies for fine-grained access control.
- Conditions can limit access by IP address, VPC endpoint, encryption status, or request time.
- Use policy variables for dynamic permissions.

## S3 Block Public Access
- Global bucket and account-level settings to prevent public access.
- Use to enforce secure defaults for buckets and objects.

## MFA Delete
- Adds multi-factor authentication requirement for deleting object versions and changing versioning state.
- Helps protect against accidental or malicious deletes.

## Cross-Region and Cross-Account Security
- Use bucket policies and IAM roles for cross-account access.
- Ensure least privilege and restrictive resource ARNs.
- Use VPC endpoints for private access to S3 from within VPCs.

## Logging and Auditing
- S3 Access Logs provide request-level records for bucket access.
- CloudTrail data events can log object-level API calls.

## Data Protection Best Practices
- Enable encryption by default.
- Use least privilege access.
- Apply block public access and monitor buckets for public exposure.
- Use object lock or retention policies for compliance.
