# Observability and Governance Interview Questions and Answers

## 1. What is the difference between CloudWatch metrics and CloudTrail logs?
Answer: CloudWatch metrics track resource performance and operational health, while CloudTrail logs capture API activity and auditing events. Metrics are used for monitoring and alerting; CloudTrail is used for governance and security auditing.

## 2. How do AWS Config rules support compliance?
Answer: AWS Config rules evaluate resource state against desired configurations and flag non-compliance. They help enforce policies, detect drift, and trigger remediation workflows.

## 3. What is AWS Trusted Advisor used for?
Answer: Trusted Advisor provides best practice recommendations on cost optimization, security, fault tolerance, performance, and service limits. It helps identify configuration issues and optimization opportunities.

## 4. When would you use CloudWatch Logs Insights?
Answer: Use Logs Insights to query, analyze, and visualize log data from CloudWatch Logs. It is useful for troubleshooting issues and understanding application behavior.

## 5. How do you implement centralized observability across AWS accounts?
Answer: Use CloudWatch cross-account dashboards and centralized CloudTrail logs. Aggregate metrics and logs into shared monitoring accounts and use AWS Organizations for governance.

## 6. What are CloudWatch Alarms and how do they work?
Answer: CloudWatch Alarms monitor metrics and trigger actions when thresholds are breached. Actions include SNS notifications, Auto Scaling, Lambda invocation, and EC2 actions.

## 7. What is CloudTrail Lake?
Answer: CloudTrail Lake is a queryable event data repository for CloudTrail logs. It enables analytics, security investigations, and long-term event storage.

## 8. How do you use OpenSearch for observability?
Answer: Use OpenSearch to index log data, create dashboards, and search across logs. It is often integrated with CloudWatch Logs or custom ingestion pipelines.

## 9. How does AWS Control Tower help with multi-account governance?
Answer: Control Tower automates landing zone setup, account provisioning, guardrail enforcement, and compliance monitoring. It simplifies multi-account AWS governance.

## 10. What is the role of OpenTelemetry in AWS observability?
Answer: OpenTelemetry standardizes the collection of traces, metrics, and logs. AWS Distro for OpenTelemetry provides a managed distribution and integrates with CloudWatch or other observability backends.
