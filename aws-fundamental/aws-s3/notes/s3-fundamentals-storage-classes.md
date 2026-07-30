# S3 Fundamentals and Storage Classes

## What is Amazon S3?
- Amazon Simple Storage Service (S3) is an object storage service.
- Stores objects in buckets with globally unique names.
- Objects are stored with metadata, and versioning can be enabled.

## Storage Classes
- `S3 Standard`: general-purpose storage for frequently accessed data.
- `S3 Intelligent-Tiering`: automatically moves objects between access tiers based on usage.
- `S3 Standard-IA`: infrequent access with lower storage costs and retrieval fees.
- `S3 One Zone-IA`: lower-cost infrequent access in a single AZ.
- `S3 Glacier Instant Retrieval`: long-term archive with milliseconds retrieval.
- `S3 Glacier Flexible Retrieval`: archive storage with minutes to hours retrieval.
- `S3 Glacier Deep Archive`: lowest-cost archive with hours retrieval.

## Bucket and Object Namespace
- Buckets are unique across AWS.
- Objects are identified by keys within a bucket.
- S3 uses a flat namespace, but keys can emulate folder structure.

## Versioning
- Enables preservation of object versions.
- Useful for recovering from accidental deletes or overwrites.
- Can be configured with MFA delete for extra safety.

## Object Lock
- Enforces write-once-read-many (WORM) policies.
- Supports governance mode and compliance mode.
- Used for regulatory retention and immutability.

## Strong Read-After-Write Consistency
- S3 provides strong consistency for both new and overwritten objects.
- This removes the need for special read-after-write logic in many applications.

## S3 Request Types
- `PUT`, `GET`, `DELETE`, `COPY`, `HEAD`.
- Multipart upload for large objects.
- Multipart upload improves reliability and performance for uploads over 100 MB.
