# Issue Tracking – Blackjack CI/CD Project

---

## Issue Details

| Field | Value |
|-------|-------|
| **Issue ID** | PROJ-001 |
| **Title** | Add health check endpoint for CI/CD and Docker |
| **Type** | ✨ Feature |
| **Priority** | 🟠 High |
| **Status** | ✅ Done |
| **Assignee** | Jack MacKay |
| **Reporter** | Jack MacKay |
| **Created Date** | 2025-12-14 |
| **Due Date** | 2025-12-14 |

---

## Description

### Summary
> Implement a health check endpoint that allows Docker containers and GitHub Actions workflows to verify that the application is running correctly.

### For Features: User Story
> As a developer, I want a `/health` endpoint so that CI/CD pipelines and Docker deployments can automatically verify application availability.

---

## Technical Details

### Affected Components
- [ ] Frontend
- [x] Backend API
- [ ] Database
- [x] Docker/Deployment
- [x] CI/CD Pipeline

### Error Messages/Logs
N/A

## Acceptance Criteria

- [x] Application exposes a `/health` endpoint
- [x] Endpoint returns HTTP 200 status
- [x] Endpoint returns JSON with application status
- [x] Docker health checks pass
- [x] CI workflow completes successfully

---

## Resolution

### Solution Implemented
> A Flask `/health` endpoint was added to the application. Docker and GitHub Actions were configured to use this endpoint to validate application health in staging and production environments.

### Pull Request(s)
- PR #1: Add health check endpoint and CI support

### Resolution Date
2025-12-14