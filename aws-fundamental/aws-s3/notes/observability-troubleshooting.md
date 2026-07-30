# Observability and Troubleshooting

## Logging
- S3 server access logs provide detailed records of requests made to a bucket.
- CloudTrail data events log object-level API activity.
- Configure logs to be delivered to a separate bucket for auditing.

## Metrics and Monitoring
- CloudWatch metrics are available for request counts, bytes transferred, and errors.
- Monitor `4xxErrorRate`, `5xxErrorRate`, and `FirstByteLatency`.
- Create alarms for unexpected request spikes or error rates.

## Data Events for Auditing
- Enable CloudTrail data events for S3 to track `GetObject`, `PutObject`, and other operations.
- Useful for compliance and security monitoring.

## Troubleshooting Common Issues
- Permission denied: check IAM and bucket policies, ACLs, and Block Public Access.
- Object not found: verify the bucket name, object key, and region.
- Slow uploads/downloads: review transfer acceleration and request patterns.

## Lifecycle and Replication Troubleshooting
- Verify lifecycle rules and replication configuration.
- Check replication status and destination bucket permissions.
- Ensure versioning is enabled for replication and object lock.

## Best Practices for DevOps
- Use Infrastructure as Code (CloudFormation / Terraform) for bucket and policy management.
- Automate lifecycle and replication rules.
- Use monitoring and alerting for S3 usage and errors.
