# DevOps and Automation Interview Questions and Answers

## 1. What are the benefits of using AWS CodePipeline?
Answer: CodePipeline automates build, test, and deployment workflows, enabling continuous delivery. It integrates with source providers, build systems, and deployment targets.

## 2. How does CodeBuild differ from a self-hosted CI server?
Answer: CodeBuild is managed, scalable, and does not require provisioning build servers. It automatically provisions build environments and scales based on build volume.

## 3. What deployment strategies can CodeDeploy support?
Answer: CodeDeploy supports in-place deployments, blue/green deployments, canary releases, and linear traffic shifts for Lambda. It also supports deployment hooks and rollback triggers.

## 4. How do you use AWS CloudFormation to manage infrastructure as code?
Answer: Define resources in YAML/JSON templates, deploy stacks, use parameters and outputs, and manage updates with change sets. CloudFormation provides drift detection and rollback on failure.

## 5. What is the AWS CDK and why use it?
Answer: The AWS CDK lets you define infrastructure using programming languages and synthesize CloudFormation templates. It enables reusable constructs, abstractions, and more expressive logic.

## 6. How do you instrument applications with X-Ray?
Answer: Add X-Ray SDKs or enable X-Ray tracing for supported AWS services. Use service maps, traces, and segment metadata to identify latency and errors.

## 7. When should you use Lambda in a DevOps pipeline?
Answer: Use Lambda for event-driven automation, such as deployment hooks, custom notifications, or infrastructure automation tasks triggered by CloudWatch Events.

## 8. What is the role of CodeArtifact in package management?
Answer: CodeArtifact stores and manages software packages, enabling secure sharing across teams and integrations with build systems. It supports npm, Maven, Python, and NuGet packages.

## 9. How do you use CloudWatch Events / EventBridge in automation?
Answer: Use EventBridge rules to trigger Lambda, Step Functions, or other targets based on resource state changes, schedule events, or custom application events. It enables event-driven automation and alerting.

## 10. What are best practices for logging in automated deployments?
Answer: Centralize logs in CloudWatch Logs, use structured logging, retain logs based on compliance needs, and set alarms on error or failure patterns. Ensure build and deployment logs are accessible for troubleshooting.
