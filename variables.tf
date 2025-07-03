variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_a" { default = "10.0.0.0/24" }
variable "public_subnet_b" { default = "10.0.2.0/24" }
variable "private_subnet_a" { default = "10.0.1.0/24" }
variable "private_subnet_b" { default = "10.0.3.0/24" }

variable "ec2_instance_type" { default = "t3.micro" }

variable "db_username" { default = "admin" }

variable "db_password" {
  description = "DB master password"
  type        = string
  sensitive   = true
}
