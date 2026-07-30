# Access Control and Policies

## IAM Policies vs Bucket Policies
- IAM policies grant permissions to users, groups, or roles.
- Bucket policies grant permissions to the bucket and contained objects.
- Both can be used together, and effective permissions are the intersection.

## Common S3 Actions
- `s3:GetObject`, `s3:PutObject`, `s3:DeleteObject`
- `s3:ListBucket`
- `s3:PutBucketPolicy`, `s3:GetBucketPolicy`

## Policy Conditions
- Restrict by IP address using `aws:SourceIp`.
- Require encryption with `s3:x-amz-server-side-encryption`.
- Restrict access to a VPC endpoint using `aws:SourceVpce`.
- Limit access by object tags or prefixes.

## Pre-signed URLs
- Temporarily grant access to specific objects.
- Commonly used for secure downloads or uploads from clients.
- Expiration time controls validity.

## Cross-Account Access
- Use bucket policies or IAM roles with trust policies.
- Prefer roles and temporary credentials over long-lived access keys.
- Use `arn:aws:s3:::bucket-name/*` for object-level permissions.

## Public Access and Security
- Use Block Public Access settings to prevent public exposure.
- Review ACLs and bucket policies to avoid unintended public access.

## Access Logging
- Enable server access logging for audit trails.
- Use CloudTrail data events for object-level API logging.
