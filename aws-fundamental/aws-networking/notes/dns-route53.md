# DNS and Route 53

## Amazon Route 53
- AWS managed DNS service.
- Supports domain registration, DNS resolution, and health checks.

## Hosted Zones
- Public hosted zone: resolves names over the internet.
- Private hosted zone: resolves names within one or more VPCs.
- Use private hosted zones for internal services and internal DNS names.

## Record types
- `A`: maps a name to an IPv4 address.
- `AAAA`: maps a name to an IPv6 address.
- `CNAME`: maps one domain name to another.
- `Alias`: AWS-specific record for pointing to AWS resources like ELB or S3.

## Alias vs CNAME
- Alias records can point to AWS resources and do not incur extra lookup costs.
- CNAME cannot be used for the root domain (zone apex).

## Health Checks and Failover
- Route 53 health checks monitor endpoints.
- Can use failover routing to switch traffic when endpoints fail.

## Route 53 Resolver
- Provides DNS resolution between on-premises networks and AWS.
- Supports inbound and outbound endpoints.
- Useful for hybrid architectures and private hosted zone resolution.
