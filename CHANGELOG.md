# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Standardized project directory structure (`app/`, `terraform/`, `pipeline/`, `docs/`).
- GitHub community health files (`CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`).
- Comprehensive `.gitignore` to prevent secret leakage and keep repo clean.
- Detailed professional `README.md` with architecture diagrams and workflow explanation.

### Fixed
- Deployment pipeline hang caused by infinite loops in `deploy.sh`.
- Removed deprecated VM SKUs and replaced with `Standard_B2als_v2`.
- Corrected Terraform Workload Identity Federation authentication logic.

### Removed
- Legacy cached files, temporary directories, and untracked build artifacts.
