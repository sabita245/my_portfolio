# Load Balancing

## Elastic Load Balancing (ELB)
- Distributes incoming traffic across multiple targets.
- Improves availability and scalability.

## Application Load Balancer (ALB)
- Layer 7 load balancer.
- Supports HTTP/HTTPS routing.
- Features path-based routing, host-based routing, and WebSocket support.

## Network Load Balancer (NLB)
- Layer 4 load balancer.
- Handles TCP/UDP traffic with very low latency.
- Can preserve source IP.

## Gateway Load Balancer (GLB)
- Designed for deploying third-party virtual appliances.
- Works with transparent gateway architecture.

## Classic Load Balancer (CLB)
- Legacy ELB offering.
- Supports HTTP/HTTPS and TCP but has fewer modern features.

## Listeners and Target Groups
- Listener: checks for connection requests on a specific port and protocol.
- Target group: set of endpoints that receive traffic.
- Health checks determine target availability.

## SSL/TLS Termination
- ALB can terminate TLS at the load balancer.
- Certificate management is usually done with AWS Certificate Manager (ACM).

## Common deployment patterns
- Public-facing ALB for web applications.
- Internal NLB for private service-to-service traffic.
- ALB in front of ECS services or Kubernetes workloads.
