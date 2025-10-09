# BSFC Application

This repository contains the **CI/CD pipeline**, **Kubernetes manifests**, and **Docker image** configuration for the BSFC application deployed to **Oracle OKE** via a secure Bastion tunnel.

## Folder Structure
- `web/` – Frontend assets or static site.
- `k8s/` – Kubernetes deployment and service manifests.
- `.github/workflows/` – CI/CD automation pipelines.
- `Dockerfile` – Image build instructions.

## Pipelines
- **ci-build.yml** → Builds & pushes Docker image.
- **security-scan.yml** → Scans for vulnerabilities/secrets.
- **cd-deploy-oke.yml** → Deploys to OKE via Bastion.

## Deployment Flow
1. Developer commits to `master`.
2. CI builds & pushes Docker image to OCIR.
3. CD workflow triggers → creates Bastion session → deploys to OKE cluster.
