# Connectivity and Hybrid Networking Interview Questions

## 1. What is AWS Direct Connect?
Answer: Direct Connect is a dedicated private network connection from on-premises to AWS that provides consistent bandwidth and lower latency.

## 2. What is the difference between Site-to-Site VPN and Client VPN?
Answer: Site-to-Site VPN connects entire networks to AWS, while Client VPN provides secure remote access for individual users.

## 3. What is AWS PrivateLink used for?
Answer: PrivateLink provides private connectivity to AWS services or customer-owned services through interface endpoints.

## 4. What is AWS Cloud WAN?
Answer: Cloud WAN is a centralized service for managing global network connectivity across regions and on-premises locations.

## 5. When should you use Direct Connect over VPN?
Answer: Use Direct Connect when you need higher throughput, lower latency, or consistent private connectivity.

## 6. How does AWS Transit Gateway help hybrid networking?
Answer: Transit Gateway connects multiple VPCs and on-premises networks through a hub-and-spoke model, simplifying routing.

## 7. What is a common hybrid architecture pattern?
Answer: A common pattern is VPN or Direct Connect to Transit Gateway, then Transit Gateway connects to multiple VPCs.

## 8. What are the benefits of PrivateLink?
Answer: PrivateLink keeps traffic on the AWS network and avoids exposing services to the public internet.

## 9. How do you secure hybrid connectivity?
Answer: Use encryption, strong authentication, network segmentation, and monitor connections with CloudWatch and CloudTrail.
