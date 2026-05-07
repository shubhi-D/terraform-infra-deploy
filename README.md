# Terraform Azure Infrastructure Deployment

## Overview

This project provisions Azure infrastructure using Terraform with a modular architecture approach.

The deployment includes:
- Azure Container Registry (ACR)
- Azure Container Apps
- Azure Storage Account

The infrastructure is organized using reusable Terraform modules and environment-based configuration.

---

## Project Structure

```text
.
├── environments/
│   └── prod/
│       ├── backend.tf
│       ├── main.tf
│       ├── providers.tf
│       ├── variables.tf
│
├── modules/
│   ├── acr/
│   ├── container_apps/
│   └── storage_account/
```

---

## Technologies Used

- Terraform
- AzureRM Provider
- Azure Container Apps
- Azure Container Registry (ACR)
- Azure Storage Account

---

## Features

- Modular Terraform design
- Environment-specific deployment structure
- Reusable infrastructure modules
- Remote backend support
- Infrastructure as Code (IaC) workflow

---

## Terraform Concepts Demonstrated

- Modules
- Variables
- Outputs
- Backend configuration
- Provider configuration
- Environment separation
- Resource dependencies

---

## Deployment Workflow

```bash
terraform init
terraform plan
terraform apply
```

---

## Learning Goals

This repository was created to practice:
- Azure infrastructure provisioning
- Terraform modular architecture
- Environment-based deployments
- Infrastructure automation concepts

---

## Future Improvements

- GitHub Actions CI/CD integration
- HCP Terraform integration
- Multi-environment deployment support
- Key Vault integration
- Monitoring and logging resources
