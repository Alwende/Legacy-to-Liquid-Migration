# Legacy-to-Liquid: Wakwetu Enterprise Hybrid Migration
**Architecting 99.999% Availability for High-Velocity Retail Operations**

![Project Status](https://img.shields.io/badge/Status-Complete-green)
![AWS](https://img.shields.io/badge/Provider-AWS-orange)
![Governance](https://img.shields.io/badge/Framework-PMP_|_Well--Architected-blue)

## 🎯 Executive Summary
This project demonstrates the end-to-end migration of a legacy retail ERP system (**Wakwetu General Stores Ltd**) from on-premises technical debt to a hardened, "Liquid" AWS Cloud architecture. 

As the Lead Architect and Head of PMO, I engineered a multi-tier landing zone that prioritizes **data isolation**, **fiscal governance**, and **high availability**, ensuring the business transition was seamless and secure.

---

## 🛠 The "Liquid" Architecture
The target environment follows the **AWS Well-Architected Framework**, decoupling the application and database tiers into isolated private subnets.

- **VPC Design:** Multi-AZ (us-east-1a/b) with strictly isolated private tiers.
- **Compute Tier:** Amazon Linux 2023 (t3.medium) for high-performance application hosting.
- **Persistence Tier:** PostgreSQL 17.6 RDS instance with internal-only VPC ingress.
- **Security Posture:** "Liquid" isolation—zero public internet exposure for the database and application layers.

---

## 🚀 Key Technical Breakthroughs (Real Talk)
### **1. The MGN Console Recovery**
* **The Challenge:** AWS Application Migration Service (MGN) UI failed to recognize the new Wakwetu subnets due to legacy metadata from 11 previous migration jobs.
* **The Pivot:** I bypassed the UI limitations by executing **AWS CLI (API-level) force-updates** and modifying the **EC2 Root Launch Templates**. This ensured the migration bridge was anchored to the correct VPC.

### **2. Fiscal Governance & Cost Optimization**
* **The Challenge:** Identified an AWS-default configuration trap estimated at **$946/month**.
* **The Pivot:** Applied strict PMO oversight to downscale resources to a **Free-Tier optimized stack ($0/mo)** without compromising the integrity of the migration pilot.

---

## 📂 Project Structure
- `01-Governance/`: Project Charter, PMP artifacts, and technical audit logs.
- `02-Architecture/`: Logical topology diagrams and network mapping.
- `03-Infrastructure/`: VPC specifications and IAM security policies.
- `04-Scripts/`: Automation scripts for migration and data cutover.
- `05-Artifacts/`: Legacy data dumps and pilot migration logs.

---

## 📈 JD Competency Alignment (Safaricom/Enterprise Ready)
- **Migration Strategy:** Proven ability to move workloads from Legacy/On-Prem to Hybrid Cloud.
- **Virtual Networking:** Expert-level mapping of subnets, route tables, and security groups.
- **Reverse Engineering:** Successfully translated legacy ERP specs into a modernized cloud-native target state.

---

## 🏁 Conclusion
The **Legacy-to-Liquid** initiative proves that migration is a strategic operation, not just a data transfer. By combining **PMP leadership** with **AWS Engineering**, I have built a blueprint for scalable, secure, and cost-effective digital transformation.

---
**Lead Authority:** Dan Alwende, PMP | Enterprise Solutions Architect
**Date:** February 2026
