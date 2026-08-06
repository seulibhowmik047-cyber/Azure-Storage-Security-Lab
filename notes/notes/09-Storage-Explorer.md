# Azure Storage Explorer

## Overview

Azure Storage Explorer is a free cross-platform desktop application from Microsoft that allows you to manage Azure Storage Accounts graphically.

It supports Windows, Linux, and macOS.

Using Azure Storage Explorer, you can upload, download, copy, move, and manage Azure Storage resources without using the Azure Portal.

---

# Supported Storage Services

Azure Storage Explorer supports:

- Blob Storage
- Azure Files
- Queue Storage
- Table Storage
- Azure Data Lake Storage Gen2

---

# Features

- Browse Storage Accounts
- Upload Files
- Download Files
- Delete Files
- Create Containers
- Create File Shares
- Manage Queues
- Manage Tables
- Copy Data
- Generate Shared Access Signature (SAS)

---

# Authentication Methods

Azure Storage Explorer supports multiple authentication methods.

## Microsoft Entra ID

Recommended authentication method.

Benefits:

- Secure
- Identity-based
- Supports Azure RBAC
- Least Privilege

---

## Storage Account Key

Uses Key1 or Key2.

Advantages:

- Easy to configure

Disadvantages:

- Full Storage Account access
- Not recommended
- Difficult to audit

---

## Shared Access Signature (SAS)

Allows limited and temporary access.

Benefits:

- Least Privilege
- Time-limited
- Resource-specific

---

## Connection String

Connection String contains:

- Storage Account Name
- Account Key
- Endpoint Information

Example:

```
DefaultEndpointsProtocol=https;
AccountName=mystorageaccount;
AccountKey=<Key>;
EndpointSuffix=core.windows.net
```

Keep connection strings secure because they contain sensitive credentials.

---

# Connecting to a Storage Account

### Method 1

Sign in using Microsoft Entra ID.

Recommended.

---

### Method 2

Use Storage Account Connection String.

---

### Method 3

Use Shared Access Signature (SAS).

---

### Method 4

Attach to a specific Blob Container using SAS URL.

---

# Common Operations

## Upload Files

1. Open Blob Container.
2. Select Upload.
3. Browse files.
4. Upload.

---

## Download Files

1. Select Blob.
2. Click Download.

---

## Delete Files

1. Select Blob.
2. Click Delete.

Requires Delete permission.

---

## Create Container

Blob Storage

↓

Create Blob Container

↓

Enter Name

↓

Create

---

## Create File Share

Azure Files

↓

Create File Share

↓

Specify Quota

↓

Create

---

# Storage Account Key Demonstration

Storage Explorer can connect using:

- Key1
- Key2

Risk:

Anyone possessing the Storage Account Key gains access to:

- Blob Storage
- Azure Files
- Queue Storage
- Table Storage

Therefore:

Storage Account Keys should be protected and rotated regularly.

---

# SAS Connection

Instead of using Storage Account Keys, connect using a SAS URL.

Advantages:

- Limited permissions
- Expiration time
- Supports Least Privilege
- More secure

Example permissions:

- Read
- List

Without:

- Delete
- Write

---

# Best Practices

- Prefer Microsoft Entra ID Authentication.
- Use User Delegation SAS whenever possible.
- Avoid Storage Account Keys.
- Rotate keys regularly.
- Never expose Connection Strings publicly.
- Store secrets in Azure Key Vault.
- Enable HTTPS Only.
- Use TLS 1.2.
- Enable Private Endpoint in production.

---

# Interview Questions

### What is Azure Storage Explorer?

Azure Storage Explorer is a desktop application used to manage Azure Storage resources.

---

### Which authentication method is recommended?

Microsoft Entra ID Authentication.

---

### Why should Storage Account Keys be avoided?

Because they provide unrestricted access to the entire Storage Account.

---

### What is a Connection String?

A Connection String contains the information required to connect an application to an Azure Storage Account.

---

### Why is SAS preferred over Storage Account Keys?

Because SAS provides limited, time-bound access and follows the Least Privilege Principle.

---

### Can Azure Storage Explorer upload and download files?

Yes. It supports uploading, downloading, deleting, and managing storage resources.

---

# Conclusion

Azure Storage Explorer simplifies Azure Storage management. For secure access, use Microsoft Entra ID Authentication or User Delegation SAS instead of Storage Account Keys, and always follow Azure security best practices.
