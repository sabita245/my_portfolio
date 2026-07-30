# Performance and Optimization

## Request Rate and Performance
- S3 can handle high request rates and supports at least 3,500 PUT/POST/DELETE and 5,500 GET requests per second per prefix.
- Use object key naming best practices to avoid hot partitions.

## Multipart Upload
- Use multipart upload for objects larger than 100 MB.
- Supports parallel uploads and resumable transfers.
- Complete the upload after all parts are uploaded.

## S3 Transfer Acceleration
- Uses Amazon CloudFront edge locations to accelerate uploads and downloads.
- Useful for geographically distributed users uploading large objects.

## S3 Select and Glacier Select
- S3 Select retrieves subsets of data from objects using SQL expressions.
- Reduces data transfer by returning only needed data.

## Performance Best Practices
- Use multiple prefixes for high throughput.
- Use compressed and optimized file formats for analytics workloads.
- Cache frequently accessed data closer to users with CloudFront.

## Cost Optimization
- Choose the right storage class for access patterns.
- Use Intelligent-Tiering for dynamic access patterns.
- Clean up old or unused objects with lifecycle rules.
- Avoid excessive small objects when possible to reduce request costs.
