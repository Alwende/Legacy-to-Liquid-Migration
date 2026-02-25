# Legacy-to-Liquid: Wakwetu Enterprise Hybrid Migration
**Architecting High-Availability Infrastructure for Scalable Retail Operations**

![Project Status](https://img.shields.io/badge/Status-Complete-green)
![AWS](https://img.shields.io/badge/Provider-AWS-orange)
![Governance](https://img.shields.io/badge/Framework-PMP_|_Well--Architected-blue)

## 🎯 Executive Summary
This project showcases the end-to-end migration of a legacy retail ERP system (**Wakwetu General Stores Ltd**) from aging on-premises infrastructure to a hardened, "Liquid" AWS Cloud architecture. 

As the Lead Enterprise Solutions Architect (ESA), I engineered a multi-tier landing zone that prioritizes **data isolation**, **fiscal governance**, and **high availability**, ensuring the business transition was both seamless and secure.

---

## 🛠 The "Liquid" Architecture
The target environment follows the **AWS Well-Architected Framework**, decoupling the application and database tiers into isolated private subnets.

- **VPC Design:** Multi-AZ (us-east-1a/b) with strictly isolated private tiers.
- **Compute Tier:** Amazon Linux 2023 (t3.medium) for high-performance application hosting.
- **Persistence Tier:** PostgreSQL 17.6 RDS instance with internal-only VPC ingress.
- **Security Posture:** "Liquid" isolation—zero public internet exposure for the database and application layers.

---

## 🚀 Key Technical Breakthroughs
### **1. Infrastructure-as-Code & CLI Recovery**
* **The Challenge:** AWS Application Migration Service (MGN) UI limitations prevented the indexing of newly created subnets due to account-level metadata conflicts.
* **The Pivot:** Bypassed the console by executing **AWS CLI (API-level) force-updates** and modifying **EC2 Root Launch Templates**. This established a 100% compliant network bridge where the standard UI failed.

### **2. Strategic Cost Governance**
* **The Challenge:** Identified an AWS-default configuration estimated at **$946/month** during initial setup.
* **The Pivot:** Applied strict fiscal oversight to downscale resources to a **Free-Tier optimized stack ($0/mo)**, maintaining project integrity while preserving operational runway.

---

## 📂 Project Structure & Evidence
- `01-Governance/`: Project Charter, PMP artifacts, and technical audit logs.
- `02-Architecture/`: Logical topology diagrams and network mapping.
- `03-Infrastructure/`: VPC specifications and IAM security policies.
- `04-Scripts/`: Automation scripts for migration and data cutover.
- `05-Artifacts/`: Legacy data dumps and pilot migration logs.
- `02-Images/`: **Visual Evidence Portfolio** (VPC Resource Maps, MGN CLI confirmation, and RDS Tiering).

---

## 🏁 Technical Core Competencies Demonstrated
- **Hybrid Migration:** Designing block-level replication paths from On-Prem to Cloud.
- **Virtual Network Engineering:** Advanced mapping of CIDR blocks, route tables, and security groups.
- **Systems Thinking:** Reverse-engineering legacy application requirements into modernized, secure cloud-native environments.

---
**Lead Authority:** Dan Alwende, PMP | Enterprise Solutions Architect
