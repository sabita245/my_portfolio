# DevOps and Automation Notes

## AWS CodeCommit
- Git-based source control hosted by AWS.
- Supports branching, commit history, pull requests, and code reviews.
- Integrates with CodePipeline, CodeBuild, and CloudWatch.
- Use triggers to invoke Lambda or CodeBuild on repository events.

## AWS CodeBuild
- Fully managed build service that compiles source code, runs tests, and produces artifacts.
- Build projects can use standard or custom build environments.
- Integrate with S3 for artifacts and CloudWatch for logs.
- Supports Docker build, parallel builds, and build artifacts caching.

## AWS CodeDeploy
- Deploys applications to EC2, ECS, Lambda, and on-premises servers.
- Deployment strategies:
  - In-place deployments
  - Blue/green deployments
  - Canary or linear traffic shifting for Lambda
- Supports deployment hooks and rollback configurations.

## AWS CodePipeline
- Continuous delivery service that automates build, test, and deploy workflows.
- Integrates with CodeCommit, GitHub, S3, Jenkins, and other providers.
- Can run parallel actions and manual approval steps.
- Use pipeline stages to define source, build, test, and deployment phases.

## AWS CodeArtifact
- Managed artifact repository for Maven, npm, Python, and NuGet packages.
- Use for secure package sharing across development teams.
- Supports package versioning, access control, and upstream repositories.

## AWS CloudWatch
- Monitoring and observability service for AWS resources.
- CloudWatch features:
  - Metrics, logs, dashboards, alarms
  - Contributor Insights, Logs Insights, and metric filters
  - CloudWatch Events / EventBridge rules
- Use CloudWatch for centralized alerting and incident response.

## AWS X-Ray
- Distributed tracing service for analyzing application performance.
- Captures requests across services and visualizes service maps.
- Helps identify latency, errors, and bottlenecks.
- Integrates with Lambda, ECS, EKS, API Gateway, and EC2.

## AWS Lambda
- Serverless compute service for running code without provisioning servers.
- Supports event-driven architectures with triggers from S3, DynamoDB, SQS, SNS, API Gateway, and CloudWatch Events.
- Best practices:
  - Keep functions small and single-purpose
  - Use concurrent execution and provisioned concurrency for consistent performance
  - Monitor with CloudWatch Logs and X-Ray
  - Manage environment variables and secrets securely
