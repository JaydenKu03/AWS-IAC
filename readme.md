# AWS Infrastructure Deployment (Terraform)

This repository contains Terraform (`.tf`) files used to define and automate the deployment of an AWS-based web application architecture.

## Important Notes – AWS Academy Sandbox Limitations

Due to the use of the **AWS Academy Sandbox environment**, Terraform files were not executed in this environment as they were written for demonstration purposes only. There are some limitation such as:

- **Route 53**: Custom domain registration is not supported; DNS features are limited to existing external domains.
- **IAM**: Creating roles, users, or custom policies is restricted—EC2 instance profiles and service integrations are not possible.
- **S3**: IAM-based secure access from EC2 to S3 (via instance roles) is not allowed, limiting private object operations.
- **WAF**: AWS WAF cannot be created or attached to resources like ALB due to permission restrictions.
- **CloudFront**: Custom domains, SSL certificates, Lambda@Edge, and WAF integration are not supported; only default distributions are allowed.


## Purpose

These Terraform files serve as an Infrastructure-as-Code (IaC) representation of the project and are meant to show how the architecture looks like

## What’s Included

- VPC setup (subnets, route tables, IGW, NAT)
- EC2 instance definitions
- RDS configuration
- ALB setup
- Security groups
- Cloud Watch
- Cloud Trail