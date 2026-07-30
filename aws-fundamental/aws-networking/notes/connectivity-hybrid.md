# Connectivity and Hybrid Networking

## AWS Direct Connect
- Provides dedicated private network connections from on-premises to AWS.
- Offers consistent bandwidth and lower latency.
- Often used for high-throughput or compliance-sensitive workloads.

## AWS VPN
- Site-to-Site VPN: connects on-premises networks to AWS over IPsec.
- Client VPN: allows remote users to securely connect to AWS resources.

## AWS PrivateLink
- Provides private connectivity to AWS services and customer-owned services.
- Uses interface VPC endpoints.
- Keeps traffic inside the AWS network.

## AWS Cloud WAN
- Centralized networking service for connecting global networks.
- Simplifies large-scale network management.

## Hybrid Cloud Patterns
- VPN + Direct Connect for secure access to on-prem resources.
- Transit Gateway for connecting multiple VPCs and on-prem networks.
- PrivateLink for secure service-to-service communication.
