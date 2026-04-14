# Secure DevSecOps Pipeline (AWS ECS Fargate)

## Overview

This project is a practical DevSecOps pipeline built around a simple Node.js application. It automates building, scanning, and deploying a containerized app to AWS using ECS Fargate.

The goal is to simulate a real-world CI/CD workflow where security is integrated directly into the development and deployment process.

---

## What this project does

Every time code is pushed to the main branch, the pipeline automatically:

- Builds a Docker image of the application
- Runs security checks on the code and container
- Pushes the image to AWS ECR
- Deploys the updated version to AWS ECS (Fargate)

---

## Architecture

GitHub Repository  
→ GitHub Actions (CI/CD pipeline)  
→ Docker build (Node.js app)  
→ Security scanning (Trivy + Semgrep)  
→ Amazon ECR (container registry)  
→ Amazon ECS (Fargate)  
→ Live running application  

---

## Tech Stack

- Node.js
- Docker
- AWS ECS (Fargate)
- AWS ECR
- GitHub Actions
- Trivy
- Semgrep

---

## Security in the pipeline

Security was a key part of this project. The pipeline includes:

- Trivy for scanning container vulnerabilities
- Semgrep for detecting insecure code patterns
- IAM-based AWS access control
- Non-root Docker container execution
- Security checks enforced before deployment

---

## How the pipeline works

1. Code is pushed to GitHub
2. GitHub Actions triggers the pipeline
3. Docker image is built
4. Security scans run (Trivy + Semgrep)
5. Image is pushed to Amazon ECR
6. ECS service is updated using Fargate
7. New version goes live automatically

---

## AWS setup

- ECS Cluster: secure-cluster  
- ECS Service: secure-node-service  
- Launch type: Fargate  
- Container registry: Amazon ECR  

---

## Project structure

secure-devsecops-pipeline/
├── server.js
├── package.json
├── package-lock.json
├── Dockerfile
├── task-definition.json
├── .github/workflows/
│   └── deploy.yml
├── terraform/
└── docs/

---

## Docker

Run locally:

```bash
docker build -t secure-node-app .
docker run -p 3000:3000 secure-node-app
