PROJECT CHARTER: WAK-MIG-2026-001
Project Name: Legacy-to-Liquid: Wakwetu Enterprise Hybrid Migration
Strategic Pillar: Hybrid Infrastructure & Business Continuity
Lead Authority: Dan Alwende, PMP | Solutions Architect (ESA)
Organization: Wakwetu General Stores Ltd (Cloud Division)
Classification: Confidential / Enterprise Portfolio

1. PROJECT OVERVIEW & MISSION
The mandate is to engineer a resilient, low-latency migration path for legacy VMWare workloads into a modernized Wakwetu AWS Landing Zone. In a high-availability environment, migration is not merely moving data; it is the strategic maintenance of Service Level Agreements (SLAs) of 99.999% while successfully decoupling legacy technical debt. This project serves as a definitive proof-of-concept for AWS Application Migration Service (MGN) as the primary engine for high-velocity, block-level replication.
2. PROBLEM STATEMENT & BUSINESS VALUE
The Problem: Wakwetu’s on-premises VMWare infrastructure is reaching peak capacity, resulting in siloed data, rising maintenance costs, and operational rigidity.
The Value: Transitioning to a "Liquid" architecture enables horizontal scaling, shifts from high CapEx to optimized OpEx, and establishes a cloud-native Disaster Recovery (DR) posture.
3. TECHNICAL DESIGN PARAMETERS
Source Complexity: Multi-tier application stack residing on VMWare vSphere (Simulated VMDKs).
Replication Engine: AWS MGN utilizing continuous block-level data synchronization (EBS snapshots).
Staging Environment: Isolated Migration VPC designed to prevent cross-account contamination and ensure secure data transit.
Connectivity: Simulated site-to-site communication via IAM-scoped replication agents to emulate a secure hybrid tunnel.
4. GOVERNANCE & COMPLIANCE FRAMEWORK
This project strictly adheres to the AWS Well-Architected Framework and PMP Lifecycle Standards:
Security: IAM "Principle of Least Privilege" applied to all replication agents.
Reliability: Pilot Light DR strategy implemented during the staging phase to ensure failover readiness.
Performance: Automated right-sizing using AWS Compute Optimizer during the "Test" phase to prevent over-provisioning.
5. DETAILED WORK BREAKDOWN STRUCTURE (WBS)
Phase
Milestone
Deliverable
Governance Objective
1.0
Discovery & Analysis
Migration Readiness Assessment (MRA)
Reverse-engineering legacy specs.
2.0
Landing Zone Prep
Staging VPC & Subnet Architecture
Defining the target network topology.
3.0
Agent Deployment
IAM Role & MGN Agent Installation
Establishing the replication handshake.
4.0
Pilot Migration
Data Replication & Test Cutover
Validating application integrity.
5.0
Production Cutover
Final DNS Flip & Post-Migration Audit
Achieving 99.999% service uptime.

6. RESOURCE & FISCAL CONSTRAINTS
Budget: Capped at the remaining $160 AWS Credits.
Operational Guardrails: All migration-related EC2 instances must be t3.medium or lower to preserve credit runway during the continuous replication sync.
7. STAKEHOLDER COMMUNICATION PLAN
Daily Standups: Technical logs and progress tracked via the 05-Artifacts folder.
Milestone Reviews: Formal status updates via the Wakwetu Project Repository.
