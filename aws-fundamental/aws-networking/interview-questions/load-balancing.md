# Load Balancing Interview Questions

## 1. What is Elastic Load Balancing (ELB)?
Answer: ELB distributes incoming traffic across multiple targets to improve availability and scalability.

## 2. What are the main types of ELB?
Answer: Application Load Balancer (ALB), Network Load Balancer (NLB), Gateway Load Balancer (GLB), and Classic Load Balancer (CLB).

## 3. What is an Application Load Balancer used for?
Answer: ALB is used for HTTP/HTTPS traffic and supports advanced routing such as path-based and host-based rules.

## 4. What is a Network Load Balancer used for?
Answer: NLB is used for TCP/UDP traffic with low latency and can preserve source IP addresses.

## 5. What is a listener in load balancing?
Answer: A listener checks for connection requests on a specific port and protocol and forwards traffic to target groups.

## 6. What is a target group?
Answer: A target group defines the set of endpoints that receive traffic from the load balancer.

## 7. How does SSL/TLS termination work on ALB?
Answer: ALB terminates TLS at the load balancer and then forwards decrypted traffic to targets if configured.

## 8. When would you use an internal load balancer?
Answer: Use an internal load balancer for private service-to-service traffic within a VPC.

## 9. What is Gateway Load Balancer used for?
Answer: GLB is used to deploy and scale virtual appliances like firewalls and intrusion detection systems.
