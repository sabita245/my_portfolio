# High Availability and Resilience

## Multi-AZ Architecture
- Deploy resources across multiple Availability Zones (AZs).
- Provides fault tolerance if one AZ fails.
- Common for databases, load balancers, and critical services.

## Cross-Region Networking
- Replicate applications across regions for disaster recovery.
- Use data replication and global services for latency-aware routing.

## Failover and Disaster Recovery
- Use Route 53 failover routing and health checks.
- Set RTO and RPO targets based on application needs.
- Combine multi-AZ and multi-region approaches for high availability.

## AWS Global Accelerator
- Provides static anycast IP addresses for global applications.
- Routes traffic to the optimal regional endpoint.
- Improves performance and availability for global users.
