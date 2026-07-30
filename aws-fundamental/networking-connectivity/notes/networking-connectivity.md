# Networking and Connectivity Notes

## Amazon Route 53
- DNS and global traffic management service.
- Route 53 features:
  - Hosted zones (public and private)
  - Record types: A, AAAA, CNAME, ALIAS, TXT, MX, SRV
  - Routing policies: simple, weighted, latency-based, failover, geolocation, multi-value
  - Health checks and DNS failover
  - Resolver endpoints for hybrid DNS resolution
- Best practices:
  - Use private hosted zones for internal services
  - Combine health checks with failover routing for resilience
  - Use alias records for AWS resources to avoid extra lookup costs

## AWS Direct Connect
- Dedicated network connection from on-premises to AWS.
- Direct Connect advantages:
  - Lower latency and stable throughput
  - More predictable performance than internet VPN
  - Can integrate with Direct Connect Gateway for multiple VPCs/regions
- Deployment models:
  - Dedicated connections, hosted connections, and Direct Connect Gateway
  - Link aggregation groups (LAG) for redundancy

## AWS VPN and Hybrid Connectivity
- Site-to-Site VPN uses IPsec tunnels to connect on-premises networks to AWS.
- Client VPN provides remote user connectivity into AWS VPCs.
- Components:
  - Virtual Private Gateway (VGW) on AWS side
  - Customer Gateway (CGW) on on-premise side
  - VPN connection, tunnel options, and BGP dynamic routing
  - VPN CloudHub for multi-site connectivity
- Best practices:
  - Use two tunnels for redundancy
  - Enable BGP for dynamic route propagation
  - Use ASNs and route filtering for security

## AWS Transit Gateway and PrivateLink
- Transit Gateway acts as a central hub to connect VPCs, on-premises networks, and VPNs.
- Supports transitive routing and simplifies large-scale architecture.
- PrivateLink provides private access to AWS services and custom applications through interface endpoints.
- Use cases:
  - Secure service-to-service connections without public internet
  - Centralized VPC connectivity with Transit Gateway
  - Shared services architecture

## AWS Global Accelerator and VPC Endpoints
- Global Accelerator provides static anycast IPs and optimizes routing to regional endpoints.
- Useful for global applications requiring low latency and consistent entry points.
- VPC endpoints allow private connectivity to AWS services via enhanced networking.
  - Gateway endpoints for S3 and DynamoDB
  - Interface endpoints for other AWS services

## Advanced networking patterns
- Use Transit Gateway with Direct Connect Gateway for hybrid multi-region architectures.
- Combine PrivateLink for service endpoints and VPN/Direct Connect for infrastructure connectivity.
- Implement security and monitoring through VPC Flow Logs, AWS Network Firewall, and CloudWatch.
