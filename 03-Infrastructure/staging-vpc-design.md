# WAKWETU STAGING VPC DESIGN
**Purpose:** Isolated landing zone for MGN Replication Servers.

## 1. CIDR BLOCK: `10.0.0.0/16`
## 2. SUBNET ARCHITECTURE
* **Public Subnet (Replication):** `10.0.1.0/24` 
    * *Function:* Hosts the MGN Replication Servers that talk to the public AWS MGN endpoints.
* **Private Subnet (Target):** `10.0.2.0/24`
    * *Function:* Where the actual migrated `WAK-ERP-PROD-01` instance will be launched during testing.

## 3. SECURITY GROUP (SG-REPLICATION)
* **Inbound:** TCP Port 1500 (Required for MGN block-level data transfer).
* **Outbound:** TCP Port 443 (To AWS MGN Service Endpoints).