# 🚀 Techstylers Deepdive – Cohort 6.0, Cloud Computing With Azure Track
## Capstone Project: Automating Infrastructure Deployment

Welcome to the official repository for **Project Group A** of the **Techstylers Deepdive – Cohort 6.0** under the **Cloud Computing with Azure Track**.

This repository contains all the scripts, templates, configurations, documentation, and presentation materials developed by our team as part of the final capstone project titled:

### 💡 *Automating Infrastructure Deployment in Microsoft Azure*

The project demonstrates how cloud resources can be provisioned, secured, monitored, and documented using Infrastructure-as-Code (IaC) practices and Azure-native tools. It was executed as a collaborative simulation of real-world enterprise cloud operations.

---

## 👥 Project Team & Roles

| Name | Role | Primary Responsibilities |
|------|------|----------------------------|
| **Aishat Oshileye** | Project Manager | - Define project scope, objectives, and timeline  <br> - Coordinate team meetings and check-ins  <br> - Track progress and resolve blockers  <br> - Review deliverables and demo |
| **Rebecca Oburotha** | Identity/Security Lead | - Implement Azure AD Privileged Identity Management (PIM)  <br> - Configure role assignments and MFA  <br> - Design and apply Azure Policy definitions |
| **Victor Nwoke** | VM/Networking Lead | - Design and deploy Virtual Machines using Bicep templates  <br> - Configure network components (VNet, Subnets, NSGs)  <br> - Ensure secure connectivity and routing |
| **Lucy Obilor** | Storage Lead | - Automate creation of Azure Storage Accounts  <br> - Configure redundancy, access tiers, and firewalls  <br> - Enable diagnostic logging and encryption settings |
| **John Oche** | Monitoring Lead | - Set up Azure Monitor diagnostics for key resources  <br> - Create metric alert rules and action groups  <br> - Simulate test alerts and validate email notifications |
| **Oladimeji Williams** | Documentation Lead | - Maintain detailed documentation of design, implementation, and testing  <br> - Prepare the final project report and GitHub README  <br> - Collaborate with all leads for accuracy |
| **Miracle Clement** | Presentation Lead | - Create and organize the project presentation slides  <br> - Record or coordinate the live demo  <br> - Highlight challenges, solutions, and team reflections during the demo |

> 💬 **Note**: Each role complements the other and ensures distributed ownership across the project.  
> This project is for learning purposes, and roles were not intended to limit participation. Every team member contributed to all areas of the project.

---

## 🧱 Project Goals

- ✅ Automate cloud resource deployment using Bicep
- ✅ Enforce security and compliance with Azure AD, MFA, and Policy
- ✅ Configure monitoring, diagnostics, and alerting via Azure Monitor
- ✅ Practice real-world collaboration using GitHub and documentation tools
- ✅ Deliver a well-presented, demo-ready final project as a team

---

## 📁 Repository Structure

📁 project-root/
├── 📁 bicep-templates/ # Infrastructure-as-Code scripts
├── 📁 identity-security/ # Role, policy, and PIM configurations
├── 📁 monitoring/ # Diagnostics, alert rules, and logs
├── 📁 storage/ # Storage account IaC and settings
├── 📁 network-vm/ # VM, NSG, and networking scripts
├── 📁 documentation/ # Reports, diagrams, notes
├── 📁 presentation/ # Slide decks, recordings, visuals
└── README.md # This overview file



---

## ⚙️ Deployment (Quick Start)

> Prerequisites: Azure CLI installed, Azure Subscription access, and necessary permissions.

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-org-name/your-repo-name.git
   cd your-repo-name

az login


az deployment sub create \
  --location eastus \
  --template-file ./bicep-templates/main.bicep \
  --parameters @parameters.json


Full deployment documentation is available in /documentation.

🛠️ Technologies Used
Microsoft Azure

Azure Resource Manager (ARM)

Bicep

Azure Active Directory

Azure Monitor

Azure Policy

Git & GitHub

Visual Studio Code

📚 Learning Reflections
Throughout this project, we:

Practiced real-world Infrastructure-as-Code automation

Strengthened our understanding of identity and network security in the cloud

Improved collaboration using GitHub as a shared workspace

Developed soft skills in project management, documentation, and presentations

🙌 Acknowledgments
Special thanks to Techstylers Academy for facilitating this deep-dive learning experience.
We’re also grateful to our instructors, mentors, and fellow cohort members for their guidance and support.

🚧 Project Group A – Techstylers Deepdive Cohort 6.0 | Cloud Computing with Azure
Built with passion, purpose, and partnership. 💙
