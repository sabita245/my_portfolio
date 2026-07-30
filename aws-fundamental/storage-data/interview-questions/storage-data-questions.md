# Storage and Data Interview Questions and Answers

## 1. When should you use S3 Standard vs S3 Intelligent-Tiering?
Answer: Use S3 Standard for frequently accessed objects requiring low latency. Use Intelligent-Tiering when access patterns are unpredictable, as AWS will automatically move objects between access tiers to reduce cost.

## 2. How do S3 lifecycle rules help cost optimization?
Answer: Lifecycle rules transition objects to lower-cost storage classes as they age and expire objects when they are no longer needed. This reduces storage costs for infrequent or archived data.

## 3. What is the difference between S3 replication and S3 versioning?
Answer: S3 replication copies objects across buckets in either the same or different regions. Versioning preserves multiple versions of objects within a bucket, enabling recovery from accidental deletion or overwrite.

## 4. How would you enforce secure access to S3 buckets?
Answer: Enable Block Public Access, use bucket policies and IAM policies with least privilege, require server-side encryption, and optionally use VPC endpoints or S3 access points.

## 5. What are the benefits of EBS snapshots?
Answer: EBS snapshots provide incremental backups of volumes, enabling recovery and cloning of volumes while minimizing storage costs. They can also be used to create AMIs.

## 6. When would you choose EFS over FSx?
Answer: Use EFS for Linux-based shared file storage with NFS access. Use FSx when you need Windows-native SMB storage (`FSx for Windows`) or high-performance HPC storage (`FSx for Lustre`).

## 7. What are the main storage classes in Glacier and when do you use each?
Answer: Glacier Instant Retrieval for archives with occasional immediate access, Glacier Flexible Retrieval for standard archive use with minutes-to-hours retrieval, and Glacier Deep Archive for long-term retention with the lowest cost and hours-to-days retrieval.

## 8. How can AWS Backup simplify backup management?
Answer: AWS Backup centralizes backup policies for multiple AWS services, automates backup schedules, and manages retention and restore operations across accounts and regions.

## 9. What is a best practice for managing EBS volume performance?
Answer: Right-size volumes based on workload, use provisioned IOPS for performance-sensitive workloads, enable EBS optimization, and monitor IOPS/throughput with CloudWatch.

## 10. How do you minimize costs when storing large datasets in S3?
Answer: Use the correct storage class, apply lifecycle policies, enable Intelligent-Tiering, compress data where applicable, and remove stale or temporary objects regularly.
