# VPC and Subnets

## What is a VPC?
- Virtual Private Cloud (VPC) is an isolated virtual network in AWS.
- It uses a CIDR block to define the address space, e.g. `10.0.0.0/16`.
- A VPC provides control over subnets, routing, gateways, and network security.

## Subnets
- Subnets partition the VPC CIDR into smaller address ranges.
- Public subnet: has a route to an Internet Gateway (IGW).
- Private subnet: no direct IGW route; uses NAT for outbound internet access.
- Isolated subnet: no internet access at all; used for sensitive resources.

## Route Tables
- Each subnet is associated with a route table.
- Routes define where traffic is sent for destination CIDR blocks.
- Main route table can apply to subnets that do not have explicit associations.

## Internet Gateway (IGW)
- IGW enables internet connectivity for instances in public subnets.
- Attach IGW to the VPC.
- Public subnet route table includes `0.0.0.0/0 -> igw`.

## NAT Gateway and NAT Instance
- NAT Gateway provides outbound internet access for private subnets.
- It is managed, highly available within an AZ, and costs money per hour and data.
- NAT Instance is a self-managed alternative with more control but less resilience.

## VPC Endpoints
- Gateway endpoint: for S3 and DynamoDB without internet access.
- Interface endpoint: uses AWS PrivateLink to privately access supported AWS services.
- Endpoints keep traffic inside the AWS network.

## Elastic IP
- Static public IP address for attaching to EC2 instances or NAT Gateways.
- Useful for services needing predictable public IPs.

## VPC Peering
- Connects two VPCs privately within or across accounts.
- Does not support transitive routing by default.
- Requires route table updates in both VPCs.

## AWS Transit Gateway
- Central hub to connect multiple VPCs, on-premises networks, and VPNs.
- Supports transitive routing and simplifies large-scale architectures.

## VPC Sharing
- Allows multiple AWS accounts to launch resources into a shared VPC.
- One account owns the VPC, other accounts use resource shares.
- Useful for centralized network management.
