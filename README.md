# SRE Final Project – Node.js Monitoring & Infrastructure

## 👥 Team Members
- Tairlan – Terraform, Infrastructure-as-Code, Docker deployment
- Alimkhan – Prometheus/Grafana, Monitoring, CI/CD

---

## 🚀 Project Description

This project is a Node.js web application running in Docker containers, monitored with Prometheus and Grafana. The infrastructure is deployed using Terraform, and CI/CD is handled through GitHub Actions.

---

## 🏗️ Project Structure



sre-final/
├── .github/workflows/ci-cd.yml # GitHub Actions for CI/CD
├── app/ #first task
├── terraform/
│ ├── main.tf # Terraform infra definition
│ └── docker/
│ └── app/
│ ├── Dockerfile
│ ├── app.js
│ └── package.json


---

## ⚙️ How to Run Locally with Terraform

1. Make sure **Docker** and **Terraform** are installed.
2. Go to the Terraform directory:
   ```bash
   cd terraform
   terraform init
   terraform apply -auto-approve

3. The Node.js app will be available at http://localhost:3000

4. MongoDB will be available on port 27017

CI/CD Pipeline

The CI/CD pipeline is defined in .github/workflows/ci-cd.yml and performs:

    Automatic build of the Docker image on each push to the main branch

    Verifies successful Docker build

    Runs tests (optional for future development)


Monitoring Tools

    Prometheus is configured to collect metrics from the application.

    Grafana is used to visualize metrics and set up dashboards.


Optionally, alerts can be added using Grafana alert rules or custom metrics via a /metrics endpoint in the Node.js app.


Technologies Used

    Node.js – Application server

    Docker – Containerization

    Terraform – Infrastructure as Code

    GitHub Actions – CI/CD Automation

    Prometheus – Monitoring

    Grafana – Visualization and alerting


