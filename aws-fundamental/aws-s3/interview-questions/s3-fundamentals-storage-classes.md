# S3 Fundamentals and Storage Classes Interview Questions

## 1. What is Amazon S3 and what is it typically used for?
Answer: Amazon S3 is object storage for storing and retrieving any amount of data, commonly used for backups, static website hosting, data lakes, and application assets.

## 2. Which S3 storage class should be used for frequently accessed data?
Answer: `S3 Standard` is used for frequently accessed data with low latency and high throughput.

## 3. What is S3 Intelligent-Tiering?
Answer: Intelligent-Tiering automatically moves objects between access tiers based on changing access patterns to reduce storage costs.

## 4. What is the difference between Standard-IA and One Zone-IA?
Answer: Standard-IA stores data across multiple AZs for high availability, while One Zone-IA stores data in a single AZ for lower cost with reduced resilience.

## 5. When should you use S3 Glacier Deep Archive?
Answer: Use Glacier Deep Archive for long-term retention of rarely accessed data that can tolerate retrieval times of hours.

## 6. Why is versioning important in S3?
Answer: Versioning preserves object versions, allowing recovery from accidental overwrites or deletes.

## 7. What is the purpose of object lock in S3?
Answer: Object lock enforces WORM policies for regulatory compliance and protects against object deletion or modification.

## 8. How does S3 strong consistency simplify application design?
Answer: Strong consistency ensures that reads after writes return the latest version, eliminating read-after-write consistency concerns.

## 9. What are multipart uploads and why are they useful?
Answer: Multipart upload breaks large objects into parts for parallel transfer, improving upload reliability and performance.
