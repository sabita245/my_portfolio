# Storage and Data Notes

## Amazon S3
- Object storage with unlimited scalability and strong consistency.
- Core concepts:
  - Buckets, objects, keys, and metadata
  - Storage classes: Standard, Intelligent-Tiering, Standard-IA, One Zone-IA, Glacier, Glacier Deep Archive
  - Versioning and object lock for data protection
  - Lifecycle policies for transitions and expiration
  - S3 Replication (CRR, SRR) and Replication Time Control
  - Transfer acceleration and S3 Select
- Security and access:
  - Block Public Access, bucket policies, IAM policies, and ACLs
  - SSE-S3, SSE-KMS, SSE-C, client-side encryption
  - Pre-signed URLs and VPC endpoints

## Amazon EBS
- Block storage for EC2 instances.
- Volume types: gp3, gp2, io2, io2 Block Express, st1, sc1
- Features:
  - Snapshots for backup and restore
  - Multi-Attach for Shared Storage
  - Encryption at rest with KMS
  - Volume performance tuning and IOPS management
- Best practices:
  - Use EBS-optimized instances and ENA network drivers
  - Lifecycle manage snapshots and cleanup
  - Use RAID for performance or redundancy where appropriate

## Amazon EFS and FSx
- Amazon EFS provides managed NFS file storage for Linux workloads.
- Performance modes: General Purpose, Max I/O; Throughput modes: Bursting and Provisioned.
- Amazon FSx offers fully managed file systems:
  - FSx for Windows File Server for SMB workloads
  - FSx for Lustre for high-performance computing
  - FSx for NetApp ONTAP for enterprise data management
- Use cases:
  - Shared file access across compute instances
  - Persistent storage for containers and serverless workloads
  - Data processing and machine learning storage

## Amazon S3 Glacier and Backup
- Glacier classes are archival storage for long-term retention.
- Retrieval options: Instant Retrieval, Flexible Retrieval, Deep Archive.
- AWS Backup centralizes backup policies for S3, EBS, RDS, EFS, DynamoDB, and more.
- Backup features:
  - Backup plans, vaults, tags, and lifecycle management
  - Cross-region and cross-account backup vault copies
  - Backup audit and restore capabilities

## Storage management patterns
- Define storage tiering based on access patterns and cost.
- Use lifecycle rules to move cold data to Glacier and archive tiers.
- Automate backup and snapshot scheduling with AWS Backup and Lambda.
- Enforce encryption with bucket and volume defaults.
- Build disaster recovery plans with cross-region replication and backups.
