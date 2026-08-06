# Azure Blob Storage

## Overview

Azure Blob Storage is Microsoft's object storage service designed for storing large amounts of unstructured data such as images, videos, documents, backups, logs, and application files.

Blob Storage is highly scalable, secure, durable, and accessible over HTTP/HTTPS.

---

# Blob Types

## Block Blob

Used for:

- Images
- Videos
- Documents
- Backups
- Application Files

Maximum size:
- Up to hundreds of TiB

---

## Append Blob

Used for:

- Log files
- Monitoring data
- Audit records

Optimized for append operations.

---

## Page Blob

Used for:

- Azure Virtual Machine disks (VHD)
- Random Read/Write workloads

---

# Blob Access Tiers

## Hot Tier

- Frequently accessed data
- Highest storage cost
- Lowest access cost

Examples:
- Website images
- Daily business files

---

## Cool Tier

- Infrequently accessed data
- Lower storage cost
- Higher access cost

Examples:
- Monthly backups
- Archived reports

---

## Archive Tier

- Rarely accessed data
- Lowest storage cost
- Highest retrieval latency

Examples:
- Compliance records
- Long-term backups

---

# Blob Containers

A Container is similar to a folder that stores multiple blobs.

Example:

Storage Account
│
├── Container: Images
│   ├── logo.png
│   ├── banner.jpg
│
├── Container: Documents
│   ├── report.pdf
│   ├── invoice.docx

---

# Security Features

- Microsoft Entra ID Authentication
- Azure RBAC
- Shared Access Signature (SAS)
- Private Endpoint
- Firewall
- HTTPS Only
- TLS 1.2
- Soft Delete
- Blob Versioning
- Blob Change Feed
- Customer Managed Keys (CMK)

---

# Blob URL Example

https://mystorageaccount.blob.core.windows.net/images/logo.png

---

# Common Use Cases

- Website images
- Video streaming
- File uploads
- Backup storage
- Data Lake
- Application storage
- AI datasets
- Log storage

---

# Best Practices

- Disable anonymous public access.
- Use Private Endpoint for production.
- Enable Soft Delete.
- Enable Blob Versioning.
- Use User Delegation SAS instead of Account SAS.
- Store secrets in Azure Key Vault.
- Enable Microsoft Defender for Storage.
- Use Azure Policy to enforce security.

---

# Interview Questions

### What is Azure Blob Storage?

Azure Blob Storage is an object storage service used to store unstructured data.

### What are the three Blob types?

- Block Blob
- Append Blob
- Page Blob

### Which Blob type is used for Azure VM disks?

Page Blob.

### Which access tier is cheapest?

Archive Tier.

### Which access tier is best for frequently accessed files?

Hot Tier.

### Why should Public Blob Access be disabled?

To prevent unauthorized access to data.

---

# Conclusion

Azure Blob Storage is the most commonly used Azure Storage service for storing unstructured data. Security should always be strengthened using Private Endpoint, Microsoft Entra ID, Azure RBAC, Soft Delete, Versioning, HTTPS Only, and Azure Policy.
