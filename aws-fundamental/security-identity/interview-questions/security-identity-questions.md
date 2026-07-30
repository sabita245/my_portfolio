# Security and Identity Interview Questions and Answers

## 1. What is the principle of least privilege and how do you apply it in IAM?
Answer: The principle of least privilege means granting only the permissions a principal needs to perform its tasks. Apply it by using role-based access, scoped IAM policies, service control policies, and regular access reviews.

## 2. How do IAM roles differ from IAM users?
Answer: IAM users are long-lived identities with credentials, while IAM roles are assumed temporarily and provide temporary security credentials. Roles are more secure for service-to-service access and cross-account access.

## 3. What are service control policies (SCPs) and when would you use them?
Answer: SCPs are policies applied at the AWS Organization level to restrict what services and actions accounts can use. Use them to implement organization-wide guardrails and prevent risky actions.

## 4. How does KMS key rotation work and why is it important?
Answer: KMS can automatically rotate customer-managed CMKs every year. Rotation improves security by periodically generating new key material and reducing the risk of key compromise.

## 5. When should you use CloudTrail data events?
Answer: Use data events to track object-level or resource-level activity, such as S3 object access, Lambda invocation, and DynamoDB operations. They are important for detailed auditing and compliance.

## 6. What is GuardDuty and how does it enhance security?
Answer: GuardDuty is a threat detection service that analyzes CloudTrail, VPC Flow Logs, and DNS logs to identify suspicious activity. It enhances security by providing automated findings and anomaly detection.

## 7. What is AWS Config and how does it help governance?
Answer: AWS Config records resource configurations over time and evaluates compliance against rules. It helps governance by detecting drift, auditing changes, and enabling remediation.

## 8. How would you protect a web application with WAF and Shield?
Answer: Use WAF to define rules against common web exploits like SQL injection and XSS. Use Shield Standard for DDoS protection and Shield Advanced for advanced DDoS mitigation and cost protection.

## 9. What is a resource-based policy and when is it useful?
Answer: A resource-based policy is attached to a resource and defines who can access it. It is useful for cross-account access and services like S3, SQS, SNS, and KMS.

## 10. How do you handle secrets management in AWS?
Answer: Use AWS Secrets Manager or Systems Manager Parameter Store with encryption and access policies. Rotate secrets automatically and avoid storing them in code or plain text.
