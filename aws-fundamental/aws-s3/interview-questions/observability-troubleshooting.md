# Observability and Troubleshooting Interview Questions

## 1. What is the difference between server access logging and CloudTrail data events for S3?
Answer: Server access logs record bucket request activity; CloudTrail data events capture object-level API calls.

## 2. What metrics are important to monitor for S3?
Answer: `4xxErrorRate`, `5xxErrorRate`, `FirstByteLatency`, request count, and data transfer.

## 3. How do you troubleshoot an `AccessDenied` error?
Answer: Check IAM policies, bucket policies, ACLs, Block Public Access settings, and request encryption requirements.

## 4. How can you audit changes to bucket configuration?
Answer: Use CloudTrail management events to track API calls that modify bucket settings.

## 5. How do you debug slow uploads or downloads?
Answer: Review transfer acceleration settings, network path, request patterns, and object size distribution.

## 6. What should you check if replication is not working?
Answer: Verify versioning, replication rules, IAM permissions, and destination bucket configuration.

## 7. How do you verify object lifecycle rule behavior?
Answer: Review rule filters, transition/expiration settings, and the S3 bucket lifecycle configuration in the console or API.

## 8. What tool helps validate S3 data access paths?
Answer: Use AWS CloudTrail logs and S3 access logs to trace request flow, and CloudWatch for monitoring.

## 9. Why is Infrastructure as Code important for S3 management?
Answer: It ensures consistent bucket configuration, policy management, and repeatable deployment across environments.
