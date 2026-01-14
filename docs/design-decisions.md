# Terraform Design Decisions

This document outlines the key architectural and design decisions made for the Azure Infrastructure as Code (IaC) project.

---

## Design Goals

- Demonstrate Infrastructure as Code principles using Terraform
- Model Azure infrastructure in a repeatable and environment-agnostic way
- Maintain zero cloud cost by avoiding resource deployment
- Align with real-world enterprise cloud standards

---

## Why Terraform

Terraform was selected to demonstrate:
- Declarative infrastructure definition
- Provider-based cloud abstraction
- Version-controlled infrastructure
- Repeatable and auditable deployments

---

## Resource Group Isolation

A dedicated Azure Resource Group is defined to:
- Scope resource lifecycle management
- Simplify cleanup and cost control
- Align with enterprise governance practices

---

## Variable-Driven Configuration

All configurable values (region, environment, resource names) are defined as variables to:
- Support multiple environments (dev/test/prod)
- Avoid hardcoding values
- Improve reusability and maintainability

---

## Security Considerations

- Network Security Group rules follow least-privilege principles
- SSH access is restricted to a trusted IP range
- Password-based authentication is intentionally excluded
- Sensitive values are not stored in Terraform files

---

## Cost Management Strategy

This project intentionally avoids `terraform apply`.

Infrastructure configurations are validated using:
- `terraform init`
- `terraform plan`

This approach demonstrates design intent without incurring cloud costs.

---

## Tradeoffs and Limitations

- Resources are modeled but not deployed
- Static IP values are placeholders
- VM resources are omitted to minimize complexity

These tradeoffs were intentional to focus on design, security, and cost awareness.

---

## Future Improvements

- Modular Terraform structure
- Terraform state backend configuration
- CI/CD pipeline integration
- Policy enforcement using Azure Policy

