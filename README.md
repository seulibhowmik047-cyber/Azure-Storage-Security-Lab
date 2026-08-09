# Azure Storage Security Lab

Hands-on Azure Storage Security Lab covering Blob Storage, Azure Files, Queue Storage, Table Storage, SAS, RBAC, Microsoft Entra ID, Azure Policy, Microsoft Defender for Storage, and Azure Storage security best practices.

## Overview

This lab demonstrates how to secure Azure Storage Accounts using defense-in-depth security controls and least-privilege access.

## Azure Storage Services Covered

- Blob Storage
- Azure Files
- Queue Storage
- Table Storage
- Storage Endpoints
- Storage Redundancy
  - LRS
  - ZRS
  - GRS
  - GZRS
- Hot, Cool and Archive tiers

## Security Topics

- Storage Account Keys
- Shared Access Signature (SAS)
- Account SAS
- User Delegation SAS
- Azure Storage Explorer
- Azure RBAC
- Storage Blob Data Roles
- Microsoft Entra ID Authentication
- Managed Identity
- Azure Key Vault
- Least Privilege Principle
- Public Access vs Private Endpoint
- Firewall and Virtual Network
- HTTPS Only
- TLS
- Soft Delete
- Blob Versioning
- Blob Change Feed
- Data Lifecycle Management
- Microsoft Defender for Storage
- Azure Policy
- Storage Account Security Configuration

## Repository Structure

```text
Azure-Storage-Security-Lab/
│
├── notes/
│   ├── 01-Storage-Account.md
│   ├── 02-Blob-Storage.md
│   ├── 03-Azure-Files.md
│   ├── 04-Queue-Table.md
│   ├── 05-Storage-Redundancy.md
│   ├── 06-Access-Control.md
│   ├── 07-Network-Security.md
│   ├── 08-Data-Protection.md
│   ├── 09-Storage-Explorer.md
│   └── 10-Storage-Security-Best-Practices.md
│
├── scripts/
│   └── PowerShell security scripts
│
├── screenshots/
│   └── Azure lab screenshots
│
├── pdf/
│   └── Azure Storage Security Lab documentation
│
└── README.md
