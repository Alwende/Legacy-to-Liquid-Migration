# WAKWETU MIGRATION READINESS ASSESSMENT (MRA)
**Document ID:** WAK-MIG-MRA-001
**Project:** Legacy-to-Liquid
**Analyst:** Dan Alwende, PMP | ESA

## 1. SOURCE INVENTORY (REVERSE ENGINEERING)
To achieve a successful rehost, we have audited the existing on-premises VMWare environment.

| Component | Legacy Specification (Source) | Target Mapping (AWS) |
| :--- | :--- | :--- |
| **Hostname** | `WAK-ERP-PROD-01` | `EC2-mgn-target-instance` |
| **vCPU / RAM** | 4 vCPU / 16GB RAM | `t3.xlarge` (Initial Match) |
| **Operating System** | Ubuntu 22.04 LTS | Amazon Machine Image (AMI) |
| **Disk 1 (OS)** | 100GB (Ext4) | EBS gp3 (100GB) |
| **Disk 2 (Data)** | 400GB (XFS) | EBS gp3 (400GB) |
| **Network Config** | Static IP: 192.168.1.50 | Private IP via DHCP |

## 2. REPLICATION ARCHITECTURE
We will utilize **AWS Application Migration Service (MGN)** to perform continuous, block-level data replication. This ensures that the RPO (Recovery Point Objective) is minimized to seconds, satisfying the Wakwetu high-availability mandate.

## 3. SECURITY & COMPLIANCE
* **Data in Transit:** All replication traffic will be encrypted using TLS 1.2.
* **IAM Governance:** A dedicated replication user will be created with `AWSApplicationMigrationReplicationAgentPolicy`.