# Data Lifecycle and Replication Interview Questions

## 1. What is an S3 lifecycle policy?
Answer: A lifecycle policy automatically transitions and expires objects based on rules defined by prefix, tags, and age.

## 2. How do you transition objects to Glacier?
Answer: Define a lifecycle rule that transitions objects to `Glacier Flexible Retrieval` or `Glacier Deep Archive` after a specified number of days.

## 3. What is Cross-Region Replication (CRR)?
Answer: CRR copies objects asynchronously to a bucket in another AWS region for DR and global data distribution.

## 4. What is Same-Region Replication (SRR)?
Answer: SRR copies objects within the same region for compliance or data locality.

## 5. Why does replication require versioning?
Answer: Versioning is required to track object versions and ensure replication can preserve changes and deletes.

## 6. What are replication delete markers?
Answer: Delete markers track object deletion events and can be replicated if the replication rule is configured to do so.

## 7. When is replication time control useful?
Answer: When you need a guaranteed replication SLA for critical data.

## 8. How do you exclude objects from replication?
Answer: Use replication filters based on object tags or prefixes.

## 9. What is the difference between transition actions and expiration actions?
Answer: Transition moves objects to another storage class; expiration permanently deletes objects or previous versions.
