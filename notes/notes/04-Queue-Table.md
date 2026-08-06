# Azure Queue Storage & Table Storage

## Overview

Azure Queue Storage is a cloud messaging service used to store and process messages between different applications and services. It enables asynchronous communication, improving scalability and reliability.

Azure Table Storage is a NoSQL key-value store designed for storing large amounts of structured, non-relational data.

Both services are part of Azure Storage Account.

---

# Azure Queue Storage

## What is Queue Storage?

Queue Storage stores messages that can be processed later by applications.

It helps decouple application components.

Maximum message size:
- 64 KB per message

Maximum queue size:
- Limited only by the Storage Account capacity.

---

# Queue Workflow

Application A

↓

Queue

↓

Application B

Applications communicate through messages instead of directly communicating with each other.

---

# Queue Features

- Reliable Messaging
- Highly Scalable
- Durable
- Asynchronous Processing
- REST API Support
- Secure Authentication

---

# Queue Use Cases

- Background processing
- Order processing
- Email notifications
- Image processing
- Video encoding
- Microservices communication
- Task scheduling

---

# Queue Security

- Microsoft Entra ID
- Azure RBAC
- Shared Access Signature (SAS)
- HTTPS Only
- TLS 1.2
- Private Endpoint
- Firewall Rules

---

# Azure Table Storage

## What is Table Storage?

Azure Table Storage is a NoSQL database that stores structured data.

It uses:

- Partition Key
- Row Key
- Properties

instead of SQL tables.

---

# Table Structure

Partition Key

↓

Row Key

↓

Properties

Example

Employee

PartitionKey = IT

RowKey = 1001

Name = John

Age = 28

Department = Cloud

---

# Features

- NoSQL Database
- Fast Lookup
- Massive Scalability
- Low Cost
- Flexible Schema
- REST API Support

---

# Common Use Cases

- User Profiles
- Device Information
- Application Metadata
- Inventory Systems
- IoT Data
- Logs
- Configuration Data

---

# Security Features

- Microsoft Entra ID Authentication
- Azure RBAC
- HTTPS Only
- TLS 1.2
- Private Endpoint
- Shared Access Signature
- Azure Policy
- Microsoft Defender for Storage

---

# Queue vs Table Storage

| Feature | Queue Storage | Table Storage |
|----------|---------------|---------------|
| Purpose | Messaging | NoSQL Database |
| Data Type | Messages | Structured Data |
| Communication | Yes | No |
| Query Support | Limited | Partition & Row Key |
| Common Use | Background Tasks | Metadata Storage |

---

# Best Practices

- Use HTTPS Only.
- Enable TLS 1.2.
- Use Microsoft Entra ID Authentication.
- Avoid Storage Account Keys.
- Use SAS with Least Privilege.
- Enable Private Endpoint.
- Enable Firewall Rules.
- Use Azure Policy to enforce security.
- Enable Microsoft Defender for Storage.

---

# Interview Questions

### What is Azure Queue Storage?

Azure Queue Storage is a cloud messaging service used for asynchronous communication between applications.

### What is Azure Table Storage?

Azure Table Storage is a NoSQL key-value database for structured data.

### What are the keys used in Table Storage?

- Partition Key
- Row Key

### Why is Queue Storage useful?

It decouples applications and improves scalability.

### Is Azure Table Storage relational?

No. It is a NoSQL database.

---

# Conclusion

Azure Queue Storage and Azure Table Storage provide scalable messaging and NoSQL data storage solutions. Secure deployment should include Microsoft Entra ID Authentication, Azure RBAC, Private Endpoint, HTTPS Only, TLS 1.2, Azure Policy, and Microsoft Defender for Storage.
