# 📦 SRE Final Project

This project demonstrates practical SRE practices using Docker, Terraform, Node.js, and various monitoring and benchmarking tools. It is divided into 6 tasks with a clear division of responsibilities between two team members.

---

## 👥 Team Members

- **Tairlan** – Task 2, Task 3, Task 6  
- **Alimkhan** – Task 1, Task 4, Task 5

---

## ✅ Tasks Overview

### 🔹 Task 1: Application Reliability Project  
> _By Alimkhan_

- Defined SLIs/SLOs  
- Integrated Prometheus + Grafana  
- Simulated failure scenarios  
- Created incident and postmortem reports

---

### 🔹 Task 2: Infrastructure as Code (IaC)  
> _By Tairlan_

- Used **Terraform** to provision Docker containers  
- Set up Node.js app and MongoDB  
- Automated container networking and port mapping

---

### 🔹 Task 3: Version Control  
> _By Tairlan_

- Initialized Git repository  
- Uploaded full project to **GitHub**  
- Added `.gitignore` and GitHub Actions workflow

---

### 🔹 Task 4: CI/CD Integration  
> _By Alimkhan_

- Implemented GitHub Actions for CI  
- Dockerized build process  
- Enabled auto-build on push to `main`

---

### 🔹 Task 5: Capacity Planning  
> _By Alimkhan_

- Used **ApacheBench (ab)** for load testing  
- Simulated traffic with various concurrency levels  
- Analyzed request throughput and latency

---

### 🔹 Task 6: SRE Tool Development  
> _By Tairlan_

- Created a Bash tool `health_checker.sh`  
- Monitors Docker containers and detects unhealthy/exited states  
- Logs alerts and timestamps

---

## 🚀 How to Run the Project

1. Install Docker and Terraform
2. Clone the repo:
   ```bash
   git clone https://github.com/fr1gn/sre_finalproject.git
   cd sre_finalproject/terraform

3. Deploy infrastructure:
   ```bash
   terraform init
   terraform apply -auto-approve

4. Run health check tool:
   ```bash
   cd ../tools
   ./health_checker.sh

📈 Benchmark Summary
| Concurrency | Requests | Avg Time | RPS  |
| ----------- | -------- | -------- | ---- |
| 5           | 500      | 2.9 ms   | 1713 |
| 10          | 1000     | 5.5 ms   | 1811 |
| 20          | 2000     | 10.7 ms  | 1853 |
| 50          | 5000     | 17.6 ms  | 2826 |




