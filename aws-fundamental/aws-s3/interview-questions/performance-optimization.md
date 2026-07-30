# Performance and Optimization Interview Questions

## 1. How do you optimize S3 performance for high request rates?
Answer: Use multiple prefixes, avoid hot partitions, and leverage parallel uploads/downloads.

## 2. What is S3 Transfer Acceleration?
Answer: Transfer Acceleration uses CloudFront edge locations to speed up uploads and downloads across long distances.

## 3. When should you use multipart upload?
Answer: Use multipart upload for objects larger than 100 MB to improve reliability and upload speed.

## 4. What are S3 Select and Glacier Select?
Answer: They allow you to retrieve only a subset of data from objects using SQL queries, reducing data transfer.

## 5. How can you reduce S3 storage costs?
Answer: Use the appropriate storage class, enable Intelligent-Tiering, and expire or transition objects with lifecycle rules.

## 6. Why should you avoid too many small objects?
Answer: Small objects increase request overhead and can raise request and metadata costs.

## 7. How can CloudFront improve S3 performance?
Answer: CloudFront caches content at edge locations, reducing latency and load on S3.

## 8. What is the impact of object key naming on performance?
Answer: Sequential or hot prefixes can cause performance issues; use well-distributed key names.

## 9. What metrics are important for S3 performance monitoring?
Answer: Request counts, latency, error rate, and data transfer metrics like `FirstByteLatency` and `4xx/5xx` rates.
