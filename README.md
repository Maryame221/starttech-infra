# StartTech Infrastructure

## Overview

This repository contains the Infrastructure as Code (IaC) implementation for the StartTech Cloud Engineering assessment.

The infrastructure is provisioned using **Terraform** on **Amazon Web Services (AWS)** and follows a modular architecture to support the deployment of a cloud-native full-stack application.

The application repository is maintained separately and can be found here:

**Application Repository:** https://github.com/Maryame221/much-to-do

---

# Architecture

The infrastructure provisions the following AWS resources:

* Amazon VPC
* Public and Private Subnets
* Internet Gateway
* Route Tables
* Security Groups
* Application Load Balancer (ALB)
* EC2 Auto Scaling Group
* Amazon S3 (React frontend hosting)
* Amazon CloudFront
* Amazon Elastic Container Registry (ECR)
* Amazon ElastiCache (Redis)
* Amazon CloudWatch (Logs & Monitoring)

---

# Repository Structure

```text
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
└── modules/
    ├── networking/
    ├── compute/
    ├── storage/
    └── monitoring/
```

---

# Terraform Modules

## Networking

Creates:

* VPC
* Public Subnets
* Private Subnets
* Internet Gateway
* Route Tables

## Compute

Creates:

* Application Load Balancer
* Auto Scaling Group
* EC2 Launch Template
* IAM Roles
* Security Groups

## Storage

Creates:

* Amazon S3 Bucket
* CloudFront Distribution
* Amazon ECR Repository
* ElastiCache Subnet Group

## Monitoring

Creates:

* CloudWatch Log Groups
* CloudWatch Alarms

---

# CI/CD Pipeline

This repository includes a GitHub Actions workflow that automatically validates and deploys Terraform infrastructure.

Pipeline stages include:

* Terraform Format
* Terraform Init
* Terraform Validate
* Terraform Plan
* Terraform Apply

---

# Deployment

## Prerequisites

* Terraform
* AWS CLI
* Git
* GitHub Actions Secrets configured

Required AWS credentials:

* AWS Access Key ID
* AWS Secret Access Key

---

## Initialize Terraform

```bash
terraform init
```

## Validate

```bash
terraform validate
```

## Plan

```bash
terraform plan
```

## Apply

```bash
terraform apply
```

---

# AWS Services Used

* Amazon VPC
* Amazon EC2
* Amazon Auto Scaling
* Amazon Application Load Balancer
* Amazon S3
* Amazon CloudFront
* Amazon ECR
* Amazon ElastiCache
* Amazon CloudWatch
* AWS IAM

---

# Technologies

* Terraform
* AWS
* GitHub Actions
* Infrastructure as Code (IaC)

---

# Related Repository

Application Repository:

https://github.com/Maryame221/much-to-do

---

# Author

Maryame Diom

Cloud Engineering | DevOps | AWS | Terraform
