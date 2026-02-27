# 🚀 AWS Portfolio — Piyaphan Sukpong

> Junior Cloud Engineer | Transitioning from IT Support to Cloud Infrastructure

[![AWS EC2](https://img.shields.io/badge/AWS-EC2-FF9900?style=flat&logo=amazon-aws)](https://aws.amazon.com/ec2/)
[![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=flat&logo=docker)](https://docs.docker.com/compose/)
[![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?style=flat&logo=nginx)](https://nginx.org/)
[![S3](https://img.shields.io/badge/AWS-S3_Static_Hosting-569A31?style=flat&logo=amazon-s3)](https://aws.amazon.com/s3/)

---

## 📌 Project Overview

A portfolio website deployed on real AWS infrastructure, demonstrating end-to-end Cloud Engineering skills including EC2, Docker, IAM, S3, VPC, and GitHub.

**Live Demo:**
- 🌐 S3 Static: http://piyaphan-portfolio-2026.s3-website-ap-southeast-1.amazonaws.com
- 🐳 EC2 + Docker: http://18.143.65.218

---

## 🏗️ Architecture

```
Internet
    │
    ▼
Security Group (Port 80, 443, 8082-8085)
    │
    ▼
EC2 Instance (Amazon Linux 2023) — ap-southeast-1 (Singapore)
    │
    ├── Docker Container: nginx  (Port 80)   → Portfolio Website
    ├── Docker Container: nginx  (Port 8082) → Static Site
    ├── Docker Container: nginx  (Port 8083) → Docker Compose Web
    ├── Docker Container: httpd  (Port 8084) → Docker Compose App
    └── Docker Container: nginx  (Port 8085) → Git Clone Deploy Test
    │
IAM Role: EC2-CloudEngineer-Role (AmazonEC2ReadOnlyAccess)
    │
S3 Bucket: piyaphan-portfolio-2026 (Static Website Hosting)
```

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| Cloud Provider | AWS (ap-southeast-1) |
| Compute | EC2 (Amazon Linux 2023) |
| Containerization | Docker, Docker Compose |
| Web Server | Nginx, Apache (httpd) |
| Storage | S3 Static Website Hosting |
| Networking | VPC, Security Groups, Elastic IP |
| IAM | IAM Role — No Access Key (Best Practice) |
| Monitoring | CloudWatch Logs Agent |
| Version Control | Git, GitHub |
| CLI | AWS CLI, Bash Scripting |

---

## 📦 Repository Structure

```
aws-portfolio/
├── html/
│   └── index.html          # Portfolio website
├── Dockerfile              # Custom nginx image
├── docker-compose.yml      # Multi-container setup
├── .gitignore
└── README.md
```

---

## 🚀 Deployment Guide

### Prerequisites
- AWS Account + EC2 Instance (Amazon Linux 2023)
- Key Pair (.pem file)
- Security Group with port 80 open

### Step 1: Connect to EC2
```bash
ssh -i "your-key.pem" ec2-user@YOUR_EC2_IP
```

### Step 2: Install Docker
```bash
sudo yum update -y
sudo yum install docker git -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
# Logout and login again for group changes to take effect
```

### Step 3: Clone & Deploy
```bash
git clone https://github.com/piyaphan098/aws-portfolio.git
cd aws-portfolio
docker compose up -d
```

### Step 4: Verify
```bash
docker ps
curl http://localhost
```

---

## 🔐 Security Best Practices Applied

- ✅ **IAM Role** instead of Access Keys — no credentials exposed
- ✅ **SSH restricted to single IP** — not open to 0.0.0.0/0
- ✅ **IMDSv2** for Instance Metadata — IMDSv1 disabled
- ✅ **Security Group** — only necessary ports open

---

## 📋 What I Learned

- Deploy and manage EC2 instances on AWS
- Install and operate Docker + Docker Compose on cloud servers
- Configure IAM Roles with least privilege principle
- Host static websites on S3 with Bucket Policy
- Use AWS CLI and IMDSv2 for instance metadata
- Git workflow: commit, push, and deploy from GitHub

---

## 👤 About Me

**Piyaphan Sukpong** — Junior Cloud Engineer  
🔄 IT Support (3+ years) → Cloud Infrastructure  
📍 Thailand  
🟢 Open to Work — Cloud Engineer / DevOps

---

*Built with ❤️ on AWS Free Tier*
