# Data Lifecycle and Replication

## Lifecycle Policies
- Automatically transition objects between storage classes.
- Automatically expire objects or delete old versions.
- Use lifecycle rules with filters based on prefix and tags.

## Transition Actions
- Move objects to lower-cost storage classes like `Standard-IA`, `Glacier`, or `Deep Archive`.
- Set transitions based on object age or creation date.

## Expiration and Cleanup
- Expire objects after a retention period.
- Clean up incomplete multipart uploads automatically.

## Replication
- S3 Replication copies objects asynchronously to another bucket.
- Cross-Region Replication (CRR) copies data across AWS regions.
- Same-Region Replication (SRR) copies data within the same region.

## Replication Features
- Replicate object metadata and tags.
- Replicate delete markers if configured.
- Replicate existing objects or only new objects after enabling replication.

## Use Cases for Replication
- Disaster recovery and compliance.
- Data locality for global applications.
- Cross-region analytics and reporting.

## Versioning Requirement
- Replication requires versioning enabled on both source and destination buckets.

## Replication Time Control (RTC)
- Provides a guaranteed replication time SLA.
- Useful for critical data that must be replicated quickly.
