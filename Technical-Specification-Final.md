# PROJECT: LEGACY-TO-LIQUID
## Technical Specification - Infrastructure Phase Complete

### **1. Network Architecture**
- **VPC ID:** vpc-0e8ebdab2d7e240a0 (Wakwetu-Migration-vpc)
- **Design:** Multi-Tiered, Multi-AZ (us-east-1a & us-east-1b)
- **Security Posture:** "Liquid" (Isolated Private Subnets for App & DB tiers)

### **2. Application Tier (Web/App)**
- **Instance:** Wakwetu-ERP-Pilot (t3.medium)
- **Placement:** Private Subnet (10.0.128.0/20)
- **Public Access:** Disabled (Internal VPC Routing Only)

### **3. Database Tier (Data Persistence)**
- **Engine:** PostgreSQL 17.6 (RDS Free Tier)
- **Endpoint:** wakwetu-erp-db.cgt8mgwikget.us-east-1.rds.amazonaws.com
- **Port:** 5432 (Internal access granted to App Tier Security Group)

### **4. Migration Readiness**
- **AWS MGN:** Replication and Launch templates forced via CLI and EC2 Root to Wakwetu infrastructure.
- **Status:** READY FOR DATA CUTOVER.
