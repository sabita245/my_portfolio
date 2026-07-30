# VPC and Subnets Interview Questions

## 1. What is a VPC in AWS?
Answer: A Virtual Private Cloud is an isolated virtual network in AWS that lets you launch resources in a defined IP address space.

## 2. What is a CIDR block and how is it used in a VPC?
Answer: A CIDR block defines the range of IP addresses for a VPC, such as `10.0.0.0/16`. Subnets are created by partitioning this CIDR.

## 3. What are the differences between public, private, and isolated subnets?
Answer:
- Public subnet: route to an Internet Gateway and can host public-facing resources.
- Private subnet: no direct internet route; typically uses NAT for outbound access.
- Isolated subnet: no internet access at all; used for internal-only resources.

## 4. How does an Internet Gateway (IGW) work?
Answer: An IGW attaches to a VPC and allows instances in public subnets to access the internet via a route table entry for `0.0.0.0/0`.

## 5. What is the purpose of a NAT Gateway?
Answer: A NAT Gateway allows instances in private subnets to initiate outbound internet traffic while preventing inbound internet connections.

## 6. When would you use a VPC endpoint?
Answer: Use an endpoint to access AWS services like S3 or DynamoDB privately without sending traffic over the internet.

## 7. What is VPC peering and what limitation does it have?
Answer: VPC peering connects two VPCs privately. It does not support transitive routing automatically.

## 8. How does AWS Transit Gateway simplify networking?
Answer: Transit Gateway acts as a central hub to connect multiple VPCs and on-premises networks with transitive routing.

## 9. What is VPC sharing?
Answer: VPC sharing allows multiple AWS accounts to provision resources into a centrally managed VPC owned by another account.
