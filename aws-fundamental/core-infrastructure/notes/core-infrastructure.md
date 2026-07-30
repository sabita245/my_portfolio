# Core Infrastructure Notes

## Amazon EC2
- EC2 provides resizable compute capacity in the cloud.
- Instance types are grouped by use case: General purpose, Compute optimized, Memory optimized, Storage optimized, GPU, and Arm-based.
- Key management concepts:
  - Amazon Machine Images (AMIs)
  - Instance metadata and user data
  - Elastic Block Store (EBS) volumes
  - Instance profiles and IAM roles
  - Security groups and network access
- Networking:
  - Primary and secondary private IPs
  - Public IP vs Elastic IP
  - ENIs and enhanced networking
- High availability patterns:
  - Launch across multiple Availability Zones (AZs)
  - Use Auto Scaling groups for demand-driven scaling
- Pricing considerations:
  - On-demand, Reserved, Spot, and Savings Plans
  - Instance hibernation and EBS optimization

## Amazon VPC
- A VPC is a logically isolated virtual network within AWS.
- Core VPC components:
  - CIDR block planning and subnet segmentation
  - Route tables, Internet Gateway (IGW), NAT Gateway, and route propagation
  - Subnet types: public, private, and isolated
  - VPC endpoints: interface and gateway
  - Elastic IP addresses and NAT instances
- Security:
  - Security groups: stateful instance-level firewall
  - Network ACLs: stateless subnet-level rules
- Advanced networking:
  - VPC peering for cross-VPC connectivity
  - Transit Gateway for hub-and-spoke architectures
  - AWS PrivateLink for private service access
  - VPC sharing and centralized network management

## Elastic Load Balancing and Auto Scaling
- Load balancers distribute traffic for availability and scaling.
- ELB types:
  - Application Load Balancer (ALB): HTTP/HTTPS, host/path-based routing, WebSocket support
  - Network Load Balancer (NLB): ultra-low latency TCP/UDP, preserves source IP
  - Gateway Load Balancer (GLB): deploys virtual appliances
- Auto Scaling:
  - Auto Scaling groups (ASG) manage EC2 fleet size
  - Policies include target tracking, step scaling, simple scaling
  - Health checks can integrate with EC2 and ELB
  - Lifecycle hooks support custom actions during instance launch/terminate
- High availability:
  - Distribute ASGs across AZs
  - Use ELB health checks to remove unhealthy instances
  - Implement blue/green or canary deployments with traffic shifting

## AWS CloudFormation and CDK
- Infrastructure as Code (IaC) standardizes environment creation.
- CloudFormation constructs AWS resources using YAML/JSON templates.
- Concepts:
  - Stacks, stack sets, change sets, nested stacks
  - Parameters, mappings, conditions, outputs
  - Drift detection and stack policy protection
- AWS CDK:
  - Defines infrastructure in TypeScript, Python, Java, C#, or Go
  - Synthesizes to CloudFormation templates
  - Supports constructs and reusable libraries
- Best practices:
  - Modularize templates with nested stacks or CDK constructs
  - Use version control and CI/CD for IaC deployments
  - Validate templates and use change sets before deployment

## AWS Systems Manager
- Systems Manager provides operational visibility and automation.
- Key components:
  - Session Manager: secure shell access without bastions
  - Run Command: execute commands on managed instances
  - Automation: orchestrate workflows and patching
  - Fleet Manager: central instance management dashboard
  - Parameter Store: store configuration data and secrets
  - Patch Manager: automate patching schemes and baselines
- Integration:
  - Works with EC2, on-premises servers, and hybrid environments
  - Can leverage IAM roles and policies for fine-grained access
  - Uses CloudWatch Events/EventsBridge for automation triggers

## Practical patterns for DevOps engineers
- Use AMI baking pipelines and immutable infrastructure.
- Implement blue/green deployment patterns with CloudFormation or CDK.
- Use Systems Manager Parameter Store and Secrets Manager for configuration.
- Centralize security group and networking configurations with templates.
- Monitor infrastructure state with CloudWatch and Config rules.
