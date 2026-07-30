# AWS Networking Fundamentals

This directory covers essential AWS networking concepts for cloud architecture, security, connectivity, and operations.

## Core Concepts

- Virtual Private Cloud (VPC)
  - VPC overview and purpose
  - VPC CIDR blocks
  - Subnets (public, private, isolated)
  - Route tables and routing
  - Internet Gateway (IGW)
  - NAT Gateway and NAT Instance
  - VPC endpoints (Gateway, Interface)
  - Elastic IP addresses
  - VPC peering
  - AWS Transit Gateway
  - VPC sharing

- Network ACLs and Security Groups
  - Security group basics
  - Stateful vs stateless firewalls
  - Inbound and outbound rules
  - Network ACL basics
  - Rule evaluation order
  - Best practices for securing traffic

- DNS and Name Resolution
  - Amazon Route 53
  - Public hosted zones
  - Private hosted zones
  - Alias records vs CNAME
  - Health checks and failover routing
  - Route 53 resolver

- Load Balancing
  - Elastic Load Balancing (ELB)
  - Application Load Balancer (ALB)
  - Network Load Balancer (NLB)
  - Gateway Load Balancer (GLB)
  - Classic Load Balancer (CLB) overview
  - Listener and target group configuration
  - SSL/TLS termination

- High Availability and Resilience
  - Multi-AZ architecture
  - Cross-region networking
  - Failover and disaster recovery
  - AWS Global Accelerator

- Connectivity Options
  - AWS Direct Connect
  - AWS VPN (Site-to-Site and Client VPN)
  - Virtual Private Gateway (VGW)
  - Customer Gateway (CGW)
  - VPN connections and BGP
  - AWS PrivateLink
  - AWS Cloud WAN
  - Hybrid cloud networking patterns

- Monitoring and Troubleshooting
  - VPC Flow Logs
  - AWS CloudWatch metrics and alarms
  - AWS CloudTrail for networking events
  - Traffic mirroring
  - Common troubleshooting tools and commands

## Recommended Concepts to Cover

- Designing secure VPC architectures
- Public-facing vs private workloads
- Internet access patterns for EC2 and containers
- Service endpoints and secure service access
- Network segmentation and isolation
- Cost optimization for networking services
- AWS networking compliance and governance

## Suggested Next Steps

1. Create sample VPC and subnet diagrams.
2. Add example configurations for VPC peering, Transit Gateway, and PrivateLink.
3. Document security group and NACL examples.
4. Show Route 53 DNS records and failover setup.
5. Explain common connectivity setups: VPN, Direct Connect, and hybrid cloud.
