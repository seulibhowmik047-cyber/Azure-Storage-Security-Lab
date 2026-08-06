# Azure Storage Redundancy

## Overview

Azure Storage Redundancy protects data against hardware failures, datacenter failures, and regional disasters by keeping multiple copies of your data.

Choosing the correct redundancy option is important for balancing cost, availability, and disaster recovery.

---

# Types of Storage Redundancy

## 1. LRS (Locally Redundant Storage)

LRS stores three copies of your data within a single Azure datacenter.

### Features

- 3 copies in one datacenter
- Lowest cost
- Protects against hardware failures
- Does NOT protect against datacenter failure

### Best For

- Development
- Testing
- Non-critical applications

---

## 2. ZRS (Zone Redundant Storage)

ZRS stores data across three different Availability Zones within the same Azure region.

### Features

- Three Availability Zones
- Protects against datacenter failure
- High Availability
- Better durability than LRS

### Best For

- Production workloads
- High Availability applications

---

## 3. GRS (Geo-Redundant Storage)

GRS stores data in the primary region and asynchronously replicates it to another Azure region.

### Features

- Six total copies
- Disaster Recovery
- Regional redundancy
- Higher durability

### Best For

- Business-critical applications
- Disaster recovery planning

---

## 4. GZRS (Geo-Zone Redundant Storage)

GZRS combines the advantages of ZRS and GRS.

### Features

- Zone redundancy
- Geo redundancy
- Highest availability
- Best disaster recovery option

### Best For

- Banks
- Government organizations
- Healthcare
- Enterprise workloads
- Mission-critical applications

---

# Comparison Table

| Feature | LRS | ZRS | GRS | GZRS |
|----------|-----|-----|------|-------|
| Copies | 3 | 3 | 6 | 6 |
| Hardware Failure | ✅ | ✅ | ✅ | ✅ |
| Datacenter Failure | ❌ | ✅ | ✅ | ✅ |
| Region Failure | ❌ | ❌ | ✅ | ✅ |
| Availability | Low | High | Very High | Highest |
| Cost | Lowest | Medium | High | Highest |

---

# Which One Should You Choose?

### Development Environment

Recommended:
- LRS

Reason:
- Lowest cost

---

### Production Environment

Recommended:
- ZRS

Reason:
- High Availability

---

### Disaster Recovery

Recommended:
- GRS

Reason:
- Regional backup

---

### Critical Enterprise Workloads

Recommended:
- GZRS

Reason:
- Maximum protection

---

# Best Practices

- Use LRS only for development and testing.
- Use ZRS for production applications.
- Use GRS for disaster recovery.
- Use GZRS for mission-critical workloads.
- Consider cost before selecting redundancy.
- Monitor replication health regularly.

---

# Interview Questions

### What is Storage Redundancy?

Storage Redundancy means storing multiple copies of data to ensure durability and availability.

---

### Which redundancy option is the cheapest?

LRS (Locally Redundant Storage).

---

### Which redundancy protects against datacenter failure?

ZRS, GRS, and GZRS.

---

### Which redundancy protects against regional disasters?

GRS and GZRS.

---

### Which redundancy offers the highest availability?

GZRS (Geo-Zone Redundant Storage).

---

### Which redundancy should banks or government organizations use?

GZRS because it provides both zone redundancy and geo redundancy.

---

# Conclusion

Azure Storage Redundancy ensures high availability and disaster recovery. Choosing the right redundancy option depends on business requirements, availability needs, compliance, and budget. For enterprise and mission-critical workloads, GZRS provides the highest level of protection.
