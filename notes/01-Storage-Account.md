# Azure Storage Account

## Overview

Azure Storage Account is a Microsoft Azure service that provides secure, scalable, durable, and highly available cloud storage for structured and unstructured data.

A Storage Account acts as a namespace that contains Azure Storage data objects such as:

- Blob Storage
- Azure Files
- Queue Storage
- Table Storage

---

# Features

- Highly Available
- Scalable
- Durable
- Secure
- Encrypted by Default
- Supports RBAC
- Supports Microsoft Entra ID Authentication
- Supports Private Endpoint
- Supports Azure Policy
- Supports Microsoft Defender for Storage

---

# Storage Account Types

- General Purpose v2 (Recommended)
- Blob Storage Account
- Premium Block Blob
- FileStorage
- Premium Page Blob

---

# Performance Tiers

## Standard

- HDD Based
- Lower Cost
- Suitable for General Workloads

## Premium

- SSD Based
- High Performance
- Low Latency
- Suitable for Critical Applications

---

# Redundancy Options

- LRS (Locally Redundant Storage)
- ZRS (Zone Redundant Storage)
- GRS (Geo Redundant Storage)
- GZRS (Geo Zone Redundant Storage)

---

# Security Features

- HTTPS Only
- TLS 1.2
- Soft Delete
- Blob Versioning
- Blob Change Feed
- Shared Access Signature (SAS)
- Azure RBAC
- Microsoft Entra ID Authentication
- Azure Key Vault
- Managed Identity
- Private Endpoint
- Firewall
- Virtual Network Rules
- Microsoft Defender for Storage

---

# Storage Account Endpoint

Example

https://mystorageaccount.blob.core.windows.net/

---

# Best Practices

- Use General Purpose v2 Storage Account
- Disable Public Access
- Use Private Endpoint
- Enable Soft Delete
- Enable Blob Versioning
- Enable HTTPS Only
- Use TLS 1.2
- Use Microsoft Entra ID Authentication
- Avoid Storage Account Keys
- Use User Delegation SAS
- Store Secrets in Azure Key Vault
- Enable Microsoft Defender for Storage
- Enforce Security using Azure Policy

---

# Interview Questions

### What is Azure Storage Account?

A secure cloud storage service used to store blobs, files, queues and tables.

### Which Storage Account type is recommended?

General Purpose v2.

### Which redundancy provides highest availability?

Geo-Zone Redundant Storage (GZRS).

### Why should Public Access be disabled?

To prevent unauthorized internet access.

### What is the default encryption?

Microsoft Managed Keys.

---

# Conclusion

Azure Storage Account is the foundation of Azure Storage services. Proper security configuration such as Private Endpoint, RBAC, Microsoft Entra ID, HTTPS Only, TLS 1.2, Soft Delete and Azure Policy greatly improves the security posture of the environment.
