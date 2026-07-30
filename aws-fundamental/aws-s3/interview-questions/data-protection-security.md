# Data Protection and Security Interview Questions

## 1. What are the server-side encryption options in S3?
Answer: SSE-S3, SSE-KMS, and SSE-C.

## 2. When should you use SSE-KMS instead of SSE-S3?
Answer: Use SSE-KMS when you need AWS KMS key management, audit logging, and fine-grained access control.

## 3. What does Block Public Access do?
Answer: It prevents buckets and objects from being publicly accessible, enforcing secure defaults.

## 4. Why are ACLs generally not recommended?
Answer: ACLs are legacy and less flexible than IAM and bucket policies, increasing complexity and risk of misconfiguration.

## 5. How do you restrict access to S3 from a specific VPC?
Answer: Use VPC endpoint policies and `aws:SourceVpce` conditions in bucket policies.

## 6. What is MFA Delete?
Answer: A feature that requires MFA to delete object versions or disable versioning, providing extra protection.

## 7. How do you audit S3 access?
Answer: Enable server access logging and CloudTrail data events for object-level API logging.

## 8. What is the difference between bucket policies and IAM policies?
Answer: Bucket policies apply to a bucket/object resource, while IAM policies apply to a principal such as a user or role.

## 9. How can you enforce encryption for objects uploaded to S3?
Answer: Use bucket policy conditions like `s3:x-amz-server-side-encryption` to require encrypted uploads.
