# TECHNICAL ARCHITECTURE: WAKWETU HYBRID TOPOLOGY

## 1. High-Level Design (Mermaid Diagram)
Below is the logical flow of the migration path from Legacy On-Premise to the Liquid AWS Cloud.

```mermaid
graph TD
    subgraph "On-Premise (Legacy)"
        A[Legacy ERP Server] -->|MGN Agent| B(Block-Level Sync)
    end

    subgraph "AWS Cloud (Liquid Architecture)"
        B --> C{MGN Replication Hub}
        C --> D[Staging Area: Public Subnet]
        D -->|Final Cutover| E[App Tier: Private Subnet]
        E <--> F[DB Tier: Private RDS]
    end

    style E fill:#f96,stroke:#333,stroke-width:2px
    style F fill:#f96,stroke:#333,stroke-width:2px
```

## 2. Component Breakdown
- **Network:** VPC (10.0.0.0/16) with Multi-AZ isolation.
- **Compute:** EC2 t3.medium (Pilot) running Amazon Linux 2023.
- **Persistence:** RDS PostgreSQL 17.6 (Post-Migration Target).
- **Security:** Security Group ingress restricted to internal VPC traffic (Port 5432).
