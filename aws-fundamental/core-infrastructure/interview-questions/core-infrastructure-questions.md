# Core Infrastructure Interview Questions and Answers

## 1. What are the main EC2 instance types and when would you use each?
Answer: General purpose instances like `t3` and `m6i` are good for balanced workloads. Compute optimized instances such as `c6i` are best for CPU-intensive tasks like batch processing, `r6i` memory optimized instances are ideal for in-memory workloads, `i4i` storage optimized are for I/O-heavy databases, and GPU instances like `g5` are used for machine learning and graphics workloads.

## 2. How would you design a multi-AZ architecture for critical applications on EC2?
Answer: Deploy at least two subnets in separate AZs, use an Auto Scaling group spanning those AZs, place an ALB/NLB in front of instances, and use health checks to remove unhealthy instances. Store persistent data on multi-AZ services such as RDS or EFS, and use cross-AZ replication for data redundancy.

## 3. What are the differences between an Internet Gateway, NAT Gateway, and VPC endpoint?
Answer: An Internet Gateway attaches to a VPC to provide Internet access for public subnets. A NAT Gateway allows private subnets to initiate outbound Internet traffic without receiving inbound connections. A VPC endpoint provides private connectivity to supported AWS services without traversing the public Internet.

## 4. How do security groups and network ACLs differ in a VPC?
Answer: Security groups are stateful instance-level firewalls where return traffic is automatically allowed. NACLs are stateless subnet-level filters requiring explicit inbound and outbound rules. Security groups should be primary access control, while NACLs provide an additional subnet-level layer.

## 5. When should you use CloudFormation versus the AWS CDK?
Answer: Use CloudFormation if you prefer declarative YAML/JSON templates and need direct control of CloudFormation resources. Use CDK when you want to define infrastructure using a programming language, abstract reusable constructs, and generate CloudFormation templates. CDK is often better for complex, modularized infrastructure.

## 6. What is an Auto Scaling group lifecycle hook and why is it useful?
Answer: Lifecycle hooks let you run custom actions during instance launch or termination, such as configuration management, warm-up scripts, or draining connections. They are useful for ensuring instances are fully configured before becoming healthy or for clean shutdown procedures.

## 7. How would you implement blue/green deployments on AWS?
Answer: Create two parallel environments (blue and green) behind a load balancer, shift traffic from blue to green after validation, and keep blue as a rollback target. Use Route 53 weighted records or ALB target groups for traffic switching and automate the deployment pipeline.

## 8. What is AWS Systems Manager Parameter Store and how would you use it?
Answer: Parameter Store stores configuration data and secrets as key-value pairs, with optional encryption using KMS. Use it to centralize configuration, manage environment variables, and provide secure parameters for applications and automation.

## 9. How do you secure SSH access to EC2 instances without exposing them directly to the internet?
Answer: Use Session Manager for browser-based or CLI interactive access, deploy bastion hosts in a private subnet with strict security groups, or use AWS Systems Manager Fleet Manager. Avoid SSH over the open internet and restrict access using IAM and security groups.

## 10. What is drift detection in CloudFormation and why is it important?
Answer: Drift detection identifies changes made to stack resources outside of CloudFormation. It is important for ensuring infrastructure remains consistent with declared templates and for detecting unauthorized or accidental modifications.
