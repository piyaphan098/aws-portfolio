# 🚀 AWS Cloud Portfolio — Piyaphan Sukpong

> Junior Cloud Engineer transitioning from **IT Support → Cloud Infrastructure**

![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=flat\&logo=amazon-aws)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=flat\&logo=docker)
![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?style=flat\&logo=nginx)
![S3](https://img.shields.io/badge/AWS-S3_Static_Hosting-569A31?style=flat\&logo=amazon-s3)

---

# 📌 Project Overview

This project demonstrates how to deploy a **cloud-based portfolio website** using real cloud infrastructure.

The system runs on **AWS EC2 with Docker containers** and follows cloud security best practices such as IAM roles, restricted SSH access, and minimal open ports.

This repository demonstrates practical experience with:

* AWS EC2 cloud infrastructure
* Docker container deployment
* Static website hosting on S3
* Linux server management
* Git-based deployment workflow

---

# 🌐 Live Demo

**EC2 Docker Deployment**

http://13.250.63.142

**S3 Static Website**

http://piyaphan-portfolio-2026.s3-website-ap-southeast-1.amazonaws.com

---

# 🏗️ Architecture

```
Internet
   │
   ▼
Security Group
(Ports: 80, 443, 8082–8085)
   │
   ▼
EC2 Instance
Amazon Linux 2023
ap-southeast-1 (Singapore)
   │
   ▼
Docker Engine
   │
   ├── nginx container (Port 80)   → Portfolio Website
   ├── nginx container (Port 8082) → Static Site
   ├── nginx container (Port 8083) → Docker Compose Web
   ├── httpd container (Port 8084) → Apache App
   └── nginx container (Port 8085) → Git Clone Test
   │
   ▼
S3 Bucket
Static Website Hosting
```

---

# ⚙️ Deployment Workflow

```
Developer
   │
   ▼
Git Commit
   │
   ▼
Git Push
   │
   ▼
GitHub Repository
   │
   ▼
Deploy to AWS EC2
```

Future improvement:

* Automated deployment with GitHub Actions CI/CD pipeline

---

# 🛠️ Tech Stack

| Category        | Technology                       |
| --------------- | -------------------------------- |
| Cloud Provider  | AWS                              |
| Compute         | EC2 (Amazon Linux 2023)          |
| Containers      | Docker, Docker Compose           |
| Web Servers     | Nginx, Apache                    |
| Storage         | S3 Static Website Hosting        |
| Networking      | VPC, Security Groups, Elastic IP |
| IAM             | IAM Role (no access keys stored) |
| Monitoring      | CloudWatch                       |
| Version Control | Git, GitHub                      |
| CLI Tools       | AWS CLI, Bash                    |

---

# 📦 Repository Structure

```
aws-portfolio
│
├── html/
│   └── index.html
│
├── Dockerfile
├── docker-compose.yml
├── .gitignore
└── README.md
```

---

# 🚀 Deployment Guide

## Prerequisites

* AWS account
* EC2 instance (Amazon Linux 2023)
* Key pair (.pem file)
* Security group allowing port **80**

---

## 1. Connect to EC2

```
ssh -i your-key.pem ec2-user@YOUR_EC2_IP
```

---

## 2. Install Docker

```
sudo yum update -y
sudo yum install docker git -y

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker ec2-user
```

Log out and log in again for Docker permissions to take effect.

---

## 3. Clone the Repository

```
git clone https://github.com/piyaphan098/aws-portfolio.git
cd aws-portfolio
```

---

## 4. Deploy Containers

```
docker compose up -d
```

---

## 5. Verify Deployment

```
docker ps
curl http://localhost
```

---

# 🔐 Security Best Practices

This project follows several cloud security practices:

* IAM Role attached to EC2 (no access keys stored)
* SSH restricted to a trusted IP
* Instance Metadata Service v2 (IMDSv2) enabled
* Minimal open ports in Security Groups
* Docker containers isolated from host environment

---

# 📚 Key Skills Demonstrated

* Deploying infrastructure on AWS
* Running Docker containers on cloud servers
* Configuring IAM roles with least privilege
* Hosting static websites using S3
* Using AWS CLI and Linux automation
* Managing Git workflow for deployments

---

# 👤 About Me

**Piyaphan Sukpong**

Junior Cloud Engineer
Transitioning from **IT Support → Cloud Infrastructure**

📍 Thailand
🟢 Open to work — Cloud Engineer / DevOps roles

---

⭐ Built with passion using the AWS Free Tier
