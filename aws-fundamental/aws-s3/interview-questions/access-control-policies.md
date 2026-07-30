# Access Control and Policies Interview Questions

## 1. What is a pre-signed URL and when is it used?
Answer: A pre-signed URL grants temporary access to an S3 object, commonly used for client uploads or downloads without exposing credentials.

## 2. How do you enforce encryption on uploads?
Answer: Add bucket policy conditions requiring `s3:x-amz-server-side-encryption` or use default encryption settings.

## 3. What condition can you use to restrict access to a VPC endpoint?
Answer: Use `aws:SourceVpce` in a bucket policy.

## 4. How do IAM policies differ from bucket policies?
Answer: IAM policies attach to principals; bucket policies attach to resources. Effective permissions are the intersection of both.

## 5. Why is cross-account access best implemented with IAM roles?
Answer: Roles provide temporary credentials and avoid sharing long-lived access keys.

## 6. What does `s3:ListBucket` allow?
Answer: It allows listing the objects in a bucket but not access to the object contents.

## 7. How can you prevent public access to a bucket?
Answer: Enable S3 Block Public Access settings and use restrictive bucket policies.

## 8. What is the recommended approach to manage S3 permissions at scale?
Answer: Use least privilege IAM roles, centralized bucket policies, and automation with Infrastructure as Code.

## 9. How do you audit object-level access in S3?
Answer: Enable CloudTrail data events and server access logs.
