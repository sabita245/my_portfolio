# Security Groups and Network ACLs

## Security Groups
- Virtual firewall for EC2 instances and other resources.
- Operates at the instance level.
- Stateful: return traffic is automatically allowed if the request is allowed.
- Rules are all allow rules; deny is implicit by omission.

### Key points
- Inbound rules control incoming traffic.
- Outbound rules control outgoing traffic.
- Each security group can be attached to multiple resources.
- Use least privilege: open only required ports and source ranges.

## Network ACLs (NACLs)
- Operate at the subnet level.
- Stateless: responses must be explicitly allowed in both directions.
- Can have allow and deny rules.
- Rules are processed in numerical order.

### Best practices
- Use security groups as primary access control for instances.
- Use NACLs for subnet-level protection and simple filtering.
- Keep NACLs easy to manage; avoid overly complex rule sets.

## Common patterns
- Public subnet: security group allows `80`, `443`, or `22` from internet sources.
- Private subnet: security group allows only application traffic from known sources.
- Default NACLs are permissive; customize them for stricter security if needed.
