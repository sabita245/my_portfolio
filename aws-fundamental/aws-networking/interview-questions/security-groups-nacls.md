# Security Groups and Network ACLs Interview Questions

## 1. What is a security group in AWS?
Answer: A security group is a virtual firewall attached to resources like EC2, controlling inbound and outbound traffic.

## 2. Are security groups stateful or stateless?
Answer: Security groups are stateful, meaning return traffic is automatically allowed for allowed inbound connections.

## 3. Can security groups contain deny rules?
Answer: No, security groups only contain allow rules; anything not explicitly allowed is denied.

## 4. What is a Network ACL (NACL)?
Answer: A NACL is a subnet-level stateless firewall that evaluates traffic with ordered allow and deny rules.

## 5. What is the main difference between security groups and NACLs?
Answer: Security groups operate at the instance level and are stateful; NACLs operate at the subnet level and are stateless.

## 6. Why would you use a NACL?
Answer: Use NACLs for subnet-level protection, simple traffic filtering, or to deny specific IP ranges.

## 7. How are NACL rules processed?
Answer: Rules are processed in numerical order, and the first matching rule determines the action.

## 8. What is a best practice for security groups?
Answer: Use least privilege by allowing only required ports and sources, and avoid broad open rules.

## 9. How can you protect a private subnet from unintended inbound traffic?
Answer: Use security groups to restrict access and avoid assigning a public IP or route to an IGW.
