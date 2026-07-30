# AWS Architecture Diagrams

This file contains architectural diagrams for common AWS DevOps patterns. The diagrams are written in Mermaid syntax so they can be viewed in VS Code or rendered in tools that support Mermaid.

## 1. VPC and Hybrid Connectivity Architecture

```mermaid
flowchart LR
  subgraph OnPrem [On-Premises]
    CGW[Customer Gateway]
    Router[Router/Firewall]
  end

  subgraph AWS [AWS Cloud]
    TGW[Transit Gateway]
    VGW[Virtual Private Gateway]
    DXG[Direct Connect Gateway]
    VPC1[VPC A]
    VPC2[VPC B]
    ALB[ALB/NLB]
    PrivateSubnet[Private Subnet]
    PublicSubnet[Public Subnet]
    S3[S3 Endpoint]
  end

  Router --> CGW
  CGW --> VGW
  Router -->|Direct Connect| DXG
  DXG --> TGW
  VGW --> VPC1
  TGW --> VPC1
  TGW --> VPC2
  VPC1 --> PublicSubnet
  VPC1 --> PrivateSubnet
  PublicSubnet --> ALB
  PrivateSubnet --> S3
  VPC1 -->|Endpoint| S3
```

### Notes
- `Customer Gateway` represents the on-premises router or VPN appliance.
- `Virtual Private Gateway` is the AWS-side endpoint for Site-to-Site VPN.
- `Direct Connect Gateway` connects Direct Connect links to multiple VPCs.
- `Transit Gateway` provides hub-and-spoke routing between VPCs and on-premises networks.
- `S3 Endpoint` is a private gateway endpoint to access S3 without the internet.

## 2. S3 Lifecycle and Replication Architecture

```mermaid
flowchart TD
  subgraph S3Source [S3 Source Bucket]
    Obj[Object Upload]
  end

  subgraph Lifecycle[Lifecycle Rules]
    Transition[Transition to Glacier/IA]
    Expire[Expire/Delete Objects]
  end

  subgraph Replication[Replication]
    CRR[Cross-Region Replication]
    SRR[Same-Region Replication]
  end

  subgraph S3Dest [S3 Destination Bucket]
    Replica[Replica Objects]
  end

  Obj --> Lifecycle
  Lifecycle -->|Move older objects| Transition
  Lifecycle -->|Clean up| Expire
  Obj --> CRR --> S3Dest
  Obj --> SRR --> S3Dest
```

### Notes
- Lifecycle rules transition cold data to lower-cost storage classes and expire objects automatically.
- Replication can be configured for cross-region disaster recovery or same-region compliance.
- Versioning must be enabled on source and destination buckets for replication.

## 3. CI/CD Pipeline Architecture

```mermaid
flowchart LR
  SCM[CodeCommit/GitHub]
  Pipeline[CodePipeline]
  Build[CodeBuild]
  Test[Test Stage]
  Deploy[CodeDeploy/ECS/Lambda]
  Prod[Production Environment]
  Monitor[CloudWatch]

  SCM --> Pipeline
  Pipeline --> Build
  Build --> Test
  Test --> Deploy
  Deploy --> Prod
  Prod --> Monitor
  Monitor --> Pipeline
```

### Notes
- Source code is stored in CodeCommit or GitHub.
- CodePipeline orchestrates build, test, and deployment stages.
- CloudWatch monitors deployments and can trigger rollback or notifications.

## 4. Observability and Governance Architecture

```mermaid
flowchart TD
  A[Applications / AWS Services]
  B[CloudWatch Metrics]
  C[CloudWatch Logs]
  D[CloudTrail]
  E[AWS Config]
  F[OpenSearch]
  G[Security Hub]
  H[Dashboards / Alerts]

  A --> B
  A --> C
  A --> D
  A --> E
  C --> F
  B --> H
  D --> G
  E --> G
  F --> H
  G --> H
```

### Notes
- CloudWatch collects metrics and logs for monitoring.
- CloudTrail records API activity for auditing.
- AWS Config evaluates resource compliance and drift.
- OpenSearch indexes logs and provides dashboards.
- Security Hub aggregates findings from GuardDuty, Config, and other tools.

## 5. Storage Architecture for EC2, EFS, and FSx

```mermaid
flowchart LR
  EC2[EC2 Instances]
  EBS[EBS Volumes]
  EFS[EFS File System]
  FSx[FSx File System]

  EC2 -- Block Storage --> EBS
  EC2 -- Shared File Storage --> EFS
  EC2 -- SMB/NFS Storage --> FSx
```

### Notes
- Use EBS for block storage on individual instances.
- Use EFS for shared file storage across Linux instances.
- Use FSx for specialized file workloads such as Windows SMB or Lustre HPC.
