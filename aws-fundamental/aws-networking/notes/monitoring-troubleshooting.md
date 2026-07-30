# Monitoring and Troubleshooting

## VPC Flow Logs
- Capture information about IP traffic going to and from network interfaces.
- Can send logs to CloudWatch Logs or S3.
- Useful for security analysis and traffic auditing.

## CloudWatch Metrics and Alarms
- Monitor network-related metrics for load balancers, VPNs, and instances.
- Create alarms for high latency, packet drops, or unhealthy targets.

## CloudTrail for Networking Events
- Logs AWS API activity for networking resources.
- Useful for auditing changes to VPCs, security groups, and route tables.

## Traffic Mirroring
- Copies network traffic from ENIs to monitoring appliances.
- Useful for deep packet inspection and security analysis.

## Troubleshooting Tools
- Use `traceroute` and `ping` for connectivity checks.
- Use VPC Reachability Analyzer for path validation.
- Review security groups, NACLs, and route tables when traffic is blocked.
