# Observability and Governance Notes

## AWS CloudWatch
- Central monitoring service for AWS and custom metrics.
- Key components:
  - Metrics: built-in and custom namespace metrics
  - Logs: log groups, log streams, subscriptions, and Insights
  - Dashboards: visualize metrics and logs in one place
  - Alarms: trigger actions based on metric thresholds
  - Synthetics: monitor endpoints with canaries
- Use CloudWatch Events / EventBridge for alerting and automation.

## AWS CloudTrail
- Logs AWS API calls for auditing and compliance.
- Supports management events, data events, and insights events.
- Important for security auditing, governance, and troubleshooting.
- Use CloudTrail Lake for queryable event data and analytics.

## Amazon OpenSearch Service
- Managed search and analytics service for log and observability data.
- Use OpenSearch for log indexing, dashboards, and alerting.
- Integrates with CloudWatch Logs, AWS DMS, and custom ingest pipelines.
- Supports multi-AZ deployments and encryption.

## AWS Config
- Tracks AWS resource configuration changes and compliance over time.
- Config rules evaluate resource compliance and drift.
- Supports aggregated views across accounts and regions.
- Integrates with CloudWatch Events and AWS Lambda for remediation.

## AWS Trusted Advisor
- Provides best practice checks for cost optimization, security, fault tolerance, performance, and service limits.
- Use Trusted Advisor recommendations to improve resource configuration.

## AWS Control Tower
- Simplifies guardrails and governance for multi-account AWS environments.
- Automates account provisioning, landing zone setup, and policy enforcement.
- Provides central dashboards for compliance and resource status.

## AWS Distro for OpenTelemetry
- Open-source distribution for collecting traces, metrics, and logs.
- Integrates with CloudWatch and third-party observability tools.
- Useful for standardized observability instrumentation across hybrid systems.

## Governance patterns
- Use infrastructure as code and IAM policies to enforce consistent environments.
- Implement centralized logging and monitoring across accounts.
- Use Config, CloudTrail, and Security Hub to detect and remediate non-compliant resources.
- Automate incident response with EventBridge rules and Lambda.
