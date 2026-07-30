# High Availability and Resilience Interview Questions

## 1. What is multi-AZ architecture?
Answer: Multi-AZ deploys resources across multiple Availability Zones for fault tolerance and higher availability.

## 2. Why is cross-region networking important?
Answer: Cross-region networking supports disaster recovery, global scale, and lower latency for users in different geographies.

## 3. What is AWS Global Accelerator?
Answer: Global Accelerator provides static anycast IP addresses and routes traffic to the optimal regional endpoint.

## 4. How do you implement failover for AWS services?
Answer: Use Route 53 health checks and failover routing, combined with multi-AZ or multi-region deployments.

## 5. What is the difference between RTO and RPO?
Answer: RTO is recovery time objective (how quickly systems recover), and RPO is recovery point objective (how much data loss is tolerable).

## 6. When would you choose multi-region over multi-AZ?
Answer: Choose multi-region when you need disaster recovery across geographic boundaries, lower regional risk, or improved global performance.

## 7. What is a typical use case for Global Accelerator?
Answer: Use it for global applications that need consistent performance and static entry points.

## 8. How can you make a VPC architecture more resilient?
Answer: Use multiple AZs, redundant load balancers, and backup connectivity patterns like VPN or Direct Connect.

## 9. What are the main AWS services for application resilience?
Answer: Route 53, ELB, RDS Multi-AZ, S3 replication, Global Accelerator, and Transit Gateway.
