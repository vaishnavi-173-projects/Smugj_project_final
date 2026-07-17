# Security Policy

## Supported Versions

Currently, only the latest release on the `main` branch is supported with security updates.

| Version | Supported          |
| ------- | ------------------ |
| main    | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

If you discover a security vulnerability within this project, please send an e-mail to the project maintainer. All security vulnerabilities will be promptly addressed.

Please do not disclose security vulnerabilities publicly until they have been resolved.

## Infrastructure Security

This project utilizes Azure infrastructure. We follow best practices including:
- Not committing secrets (handled via Azure DevOps Variables/Service Connections)
- Storing Terraform state securely in Azure Blob Storage
- Limiting network access via Azure Network Security Groups (NSGs)
- Avoiding hardcoded credentials
