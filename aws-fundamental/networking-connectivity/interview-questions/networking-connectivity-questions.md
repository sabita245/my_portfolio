# Networking and Connectivity Interview Questions and Answers

## 1. What is the difference between a public subnet and a private subnet?
Answer: A public subnet has a route to an Internet Gateway and can host resources with public IP access. A private subnet does not have direct internet access and typically uses a NAT Gateway for outbound connectivity.

## 2. How does a Virtual Private Gateway (VGW) differ from a Customer Gateway (CGW)?
Answer: VGW is the AWS side of a VPN connection attached to a VPC. CGW represents the on-premises device or endpoint that initiates the VPN tunnel.

## 3. Why would you use AWS Transit Gateway instead of VPC peering?
Answer: Transit Gateway supports hub-and-spoke architectures with transitive routing across many VPCs and on-premises connections. VPC peering is point-to-point and does not support transitive routing without additional configuration.

## 4. What is AWS PrivateLink and when is it useful?
Answer: PrivateLink provides private access to AWS services and custom endpoints through interface VPC endpoints. It is useful for securely consuming services without exposing traffic to the public internet.

## 5. How do you configure high availability for VPN connections?
Answer: Configure two or more IPsec tunnels between the VGW and CGW, use BGP for dynamic routing failover, and deploy redundant on-premises appliances or routers.

## 6. What are VPC endpoints and why are they important?
Answer: VPC endpoints enable private connectivity to certain AWS services without leaving the AWS network. They improve security, reduce internet dependency, and can lower data transfer costs.

## 7. What is Direct Connect Gateway?
Answer: Direct Connect Gateway allows multiple VPCs across different regions to connect to a Direct Connect location through a single gateway, enabling global network scalability.

## 8. How does Route 53 latency-based routing work?
Answer: Route 53 latency-based routing sends users to the endpoint with the lowest network latency from their origin, improving application responsiveness for global traffic.

## 9. When should you use AWS Global Accelerator?
Answer: Use Global Accelerator when you need static entry points and optimized routing for global users, especially for latency-sensitive applications spread across multiple regions.

## 10. How do you secure VPC traffic using AWS services?
Answer: Use security groups, NACLs, VPC Flow Logs, AWS Network Firewall, and private connectivity options like VPC endpoints, VPN, Direct Connect, and PrivateLink.
