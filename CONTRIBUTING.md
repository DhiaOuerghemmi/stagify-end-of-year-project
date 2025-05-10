# Contributing to Stagify

Thank you for your interest in contributing! Please follow these steps:

## 1. Code of Conduct
This project is governed by the [Code of Conduct](CODE_OF_CONDUCT.md).

## 2. Branching & Git Flow
- **`main`**: Production‑ready  
- **`develop`**: Integration branch for features  
- **Feature branches**: `feature/<JIRA-ID>-short-description`  
- **Release branches**: `release/<version>`  

## 3. Commit Messages
- Use [Conventional Commits](https://www.conventionalcommits.org/)  
- Format: `type(scope): subject`  
  - **type**: `feat`, `fix`, `docs`, `chore`, etc.  
  - **scope**: optional, e.g. `backend`, `frontend`  
  - **subject**: short imperative description

## 4. Pull Request Process
1. Fork the repo and create your branch.  
2. Commit changes with clear messages.  
3. Push to your fork and open a PR against `develop`.  
4. Ensure all checks pass: lint, tests, Terraform plan.  
5. Request review from the `@stagify/owners` team.  
6. On approval, merge using “Squash and merge”.

## 5. Development Setup
- **Prerequisites**: Node.js ≥14, Terraform ≥1.3, kubectl  
- **Install deps**: `npm install` in `services/backend` & `services/frontend`  
- **Run tests**: `npm test`  

