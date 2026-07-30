# Connectivity and Hybrid Networking

## AWS Direct Connect
- Provides dedicated private network connections from on-premises to AWS.
- Offers consistent bandwidth and lower latency.
- Often used for high-throughput or compliance-sensitive workloads.

## AWS VPN
- Site-to-Site VPN: connects on-premises networks to AWS over IPsec.
- Client VPN: allows remote users to securely connect to AWS resources.
- VPN connections can use static routing or dynamic BGP routing.
- AWS VPN CloudHub supports multiple on-premises sites connected via VPN to a single VPC.

## Virtual Private Gateway (VGW)
- VGW is the AWS side of a Site-to-Site VPN connection.
- Attach VGW to a VPC to connect it to external networks.
- Supports route propagation, BGP, and multiple VPN tunnels for redundancy.

## Customer Gateway (CGW)
- CGW represents the on-premises device for a VPN connection.
- Can be a physical router or software-based VPN appliance.
- Defines the on-premises public IP and routing information used by AWS.

## AWS Direct Connect
- Provides dedicated private network connections from on-premises to AWS.
- Offers consistent bandwidth and lower latency.
- Often used for high-throughput or compliance-sensitive workloads.
- Can be combined with a VGW using a Direct Connect Gateway for global or multi-VPC connectivity.

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
- Use VGW for VPC-to-on-prem VPN attachments and DXGW for cross-region connectivity.
- Use BGP and route propagation to simplify routing management across networks.
