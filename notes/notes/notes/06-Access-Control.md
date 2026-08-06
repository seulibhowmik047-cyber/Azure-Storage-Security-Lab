# Azure Storage Access Control

## Overview

Azure Storage Access Control ensures that only authorized users, applications, and services can access storage resources. Azure provides multiple authentication and authorization methods to secure Blob Storage, Azure Files, Queue Storage, and Table Storage.

Following the Principle of Least Privilege helps minimize security risks.

---

# Authentication Methods

Azure Storage supports several authentication methods:

- Microsoft Entra ID Authentication
- Azure RBAC
- Storage Account Keys
- Shared Access Signature (SAS)
- Managed Identity

---

# Microsoft Entra ID Authentication

Microsoft Entra ID (formerly Azure Active Directory) is the recommended authentication method.

## Benefits

- Identity-based authentication
- Multi-Factor Authentication (MFA)
- Azure RBAC integration
- Least Privilege access
- No shared secrets
- Easy auditing

### Best Practice

Always use Microsoft Entra ID whenever possible.

---

# Azure RBAC (Role-Based Access Control)

Azure RBAC controls **who** can access **which resource** and **what actions** they can perform.

## Common Storage Roles

### Storage Blob Data Reader

Permissions:

- Read blobs
- List containers

Cannot:

- Upload
- Modify
- Delete

---

### Storage Blob Data Contributor

Permissions:

- Read
- Upload
- Modify
- Delete blobs

Cannot:

- Manage access permissions

---

### Storage Blob Data Owner

Permissions:

- Full blob access
- Manage permissions
- Assign access

---

### Storage Account Contributor

Can manage the Storage Account configuration but does **not** automatically gain access to blob data.

---

# Storage Account Keys

Every Storage Account contains:

- Key1
- Key2

These keys provide full administrative access.

## Risks

- Full access to all services
- Difficult auditing
- Shared secret
- Violates Least Privilege

## Best Practices

- Avoid using Storage Account Keys.
- Rotate keys regularly.
- Store keys in Azure Key Vault.
- Use Entra ID instead.

---

# Shared Access Signature (SAS)

SAS provides temporary, limited access to storage resources.

You can control:

- Permissions
- Expiration Time
- Start Time
- IP Address
- Protocol (HTTPS)

---

# Types of SAS

## Account SAS

Provides access to multiple storage services.

Can access:

- Blob
- Files
- Queue
- Table

Signed using Storage Account Keys.

---

## Service SAS

Provides access to a single storage service.

Example:

Only Blob Storage

---

## User Delegation SAS

Recommended SAS type.

Signed using Microsoft Entra ID instead of Storage Account Keys.

Benefits:

- More secure
- Supports Azure AD authentication
- Recommended by Microsoft

---

# SAS Permissions

Possible permissions include:

- Read
- List
- Write
- Create
- Add
- Delete
- Move
- Execute

Always assign only the required permissions.

---

# Managed Identity

Managed Identity removes the need to store passwords or secrets in applications.

Benefits:

- Automatic credential management
- Secure authentication
- Azure-managed identities
- Works with Key Vault
- No credential rotation

---

# Least Privilege Principle

Users should receive only the permissions required to perform their tasks.

Example:

Developer

Needs:

- Read
- Upload

Does NOT need:

- Delete
- Manage Storage Account

Administrator

Needs:

- Full Access

Intern

Needs:

- Read Only

---

# Comparison

| Feature | Storage Key | SAS | Entra ID |
|----------|-------------|-----|-----------|
| Full Access | Yes | No | No |
| Least Privilege | No | Yes | Yes |
| Temporary Access | No | Yes | Yes |
| Identity Based | No | No | Yes |
| Recommended | No | Better | Best |

---

# Best Practices

- Use Microsoft Entra ID Authentication.
- Use Azure RBAC.
- Avoid Storage Account Keys.
- Use User Delegation SAS instead of Account SAS.
- Rotate Storage Keys regularly.
- Store secrets in Azure Key Vault.
- Follow the Least Privilege Principle.
- Enable MFA for administrators.
- Monitor access logs.

---

# Interview Questions

### What is Azure RBAC?

Azure RBAC controls who can access Azure resources and what actions they can perform.

---

### Why should Storage Account Keys be avoided?

Because they grant full access and violate the Least Privilege Principle.

---

### What is SAS?

Shared Access Signature is a temporary, limited permission token for accessing Azure Storage.

---

### Which SAS type is most secure?

User Delegation SAS.

---

### What is the Least Privilege Principle?

Users should receive only the minimum permissions required for their work.

---

### Which authentication method is recommended?

Microsoft Entra ID Authentication.

---

# Conclusion

Secure Azure Storage access should rely on Microsoft Entra ID, Azure RBAC, Managed Identity, and User Delegation SAS. Storage Account Keys should be avoided whenever possible because they provide unrestricted access and increase security risks.
