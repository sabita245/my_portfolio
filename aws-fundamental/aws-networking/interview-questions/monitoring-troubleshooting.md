# Monitoring and Troubleshooting Interview Questions

## 1. What are VPC Flow Logs?
Answer: VPC Flow Logs capture metadata about IP traffic to and from network interfaces for analysis and auditing.

## 2. Where can VPC Flow Logs be sent?
Answer: They can be sent to CloudWatch Logs or Amazon S3.

## 3. What metric sources are useful for AWS networking monitoring?
Answer: CloudWatch metrics from load balancers, VPN connections, NAT gateways, and network interfaces.

## 4. How does AWS CloudTrail help with networking?
Answer: CloudTrail logs API activity for networking resources, providing an audit trail for changes and access.

## 5. What is traffic mirroring used for?
Answer: Traffic mirroring copies network traffic from ENIs to security or monitoring appliances for inspection.

## 6. What tools can you use to troubleshoot VPC connectivity?
Answer: Use `ping`, `traceroute`, VPC Reachability Analyzer, and review route tables, security groups, and NACLs.

## 7. Why is VPC Reachability Analyzer useful?
Answer: It validates network paths and identifies where traffic is blocked between endpoints.

## 8. What is a common cause of blocked traffic in AWS networks?
Answer: Incorrect route tables, security group rules, or NACL rules are common causes.

## 9. How should you monitor network health?
Answer: Use CloudWatch alarms, VPC Flow Logs, Route 53 health checks, and CloudTrail auditing.
