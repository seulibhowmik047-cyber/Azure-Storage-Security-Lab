# Azure Storage Network Security

## Overview

Azure Storage Network Security protects storage accounts from unauthorized network access. It provides multiple layers of protection such as Firewalls, Virtual Networks, Private Endpoints, HTTPS enforcement, and TLS encryption.

The goal is to ensure that only trusted users, devices, and applications can access storage resources.

---

# Public Access

By default, a Storage Account can allow public network access.

If enabled:

- Accessible over the Internet
- Higher security risk
- Suitable only for testing environments

Risks:

- Unauthorized access
- Data exposure
- Increased attack surface

---

# Private Endpoint

A Private Endpoint assigns a private IP address from your Virtual Network (VNet) to the Storage Account.

Benefits:

- Traffic stays inside Azure network
- No Internet exposure
- More secure than public access
- Supports Zero Trust architecture

Best Practice:

Disable Public Access and use Private Endpoint in production.

---

# Firewall

Azure Storage Firewall controls which networks can access the Storage Account.

You can allow access from:

- Selected Virtual Networks
- Specific Public IP Addresses
- Trusted Microsoft Services

Benefits:

- Blocks unauthorized traffic
- Limits attack surface
- Improves compliance

---

# Virtual Network (VNet)

A Virtual Network allows Azure resources to communicate securely.

Storage Accounts can be configured to allow access only from selected VNets.

Example:

Azure VM

↓

Virtual Network

↓

Private Endpoint

↓

Storage Account

---

# Public Access vs Private Endpoint

| Feature | Public Access | Private Endpoint |
|----------|---------------|------------------|
| Internet Accessible | Yes | No |
| Private IP | No | Yes |
| Secure | Low | High |
| Recommended | Test Only | Production |
| Attack Surface | High | Low |

---

# HTTPS Only

HTTPS encrypts communication between clients and Azure Storage.

Benefits:

- Protects data in transit
- Prevents eavesdropping
- Prevents man-in-the-middle attacks

Always enable:

**Secure Transfer Required**

---

# TLS 1.2

TLS (Transport Layer Security) encrypts network communication.

Azure recommends using:

- TLS 1.2 or later

Avoid:

- TLS 1.0
- TLS 1.1

Benefits:

- Strong encryption
- Better compliance
- Improved security

---

# Network Security Best Practices

- Disable Public Network Access.
- Use Private Endpoints.
- Restrict access with Firewall Rules.
- Allow only trusted Virtual Networks.
- Enable HTTPS Only.
- Enforce TLS 1.2 or higher.
- Monitor Storage Account access logs.
- Use Azure Policy to enforce secure configurations.

---

# Common Attack Scenarios

## Public Blob Exposure

Cause:

Public access enabled.

Solution:

Disable anonymous public access.

---

## Unauthorized Network Access

Cause:

Firewall not configured.

Solution:

Allow only trusted IP addresses and VNets.

---

## Data Interception

Cause:

HTTP connections.

Solution:

Enable HTTPS Only and TLS 1.2.

---

## Internet Exposure

Cause:

Public Endpoint.

Solution:

Use Private Endpoint.

---

# Interview Questions

### What is a Private Endpoint?

A Private Endpoint assigns a private IP address from a Virtual Network to an Azure Storage Account, allowing secure private connectivity.

---

### Why is Public Access risky?

Because anyone on the Internet may be able to reach the Storage Account, increasing the risk of unauthorized access.

---

### What is the purpose of Azure Storage Firewall?

It restricts access to the Storage Account by allowing only selected IP addresses, Virtual Networks, or trusted Azure services.

---

### Why should HTTPS Only be enabled?

To encrypt data in transit and prevent insecure HTTP connections.

---

### Which TLS version is recommended?

TLS 1.2 or later.

---

### What is the recommended production configuration?

- Public Network Access: Disabled
- Private Endpoint: Enabled
- Firewall: Enabled
- HTTPS Only: Enabled
- TLS: 1.2 or later

---

# Conclusion

Azure Storage Network Security is a critical part of protecting cloud data. Organizations should minimize Internet exposure by using Private Endpoints, Firewalls, Virtual Networks, HTTPS Only, and TLS 1.2 while disabling unnecessary public access.
