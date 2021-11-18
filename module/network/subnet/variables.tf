variable "project_id" {
  description = "Subnet의 Project ID"
  type        = string
}

variable "region" {
  description = "VPC의 Region"
  type        = string
}

variable "subnetwork_name" {
  description = "Subnet의 Name"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "Subnet의 대역폭"
  type        = string
}

variable "vpc_name" {
  description = "VPC의 Name"
  type        = string
}

variable "subnetwork_role" {
  description = "Subnet의 role"
  type        = string
}

variable "subnetwork_purpose" {
  description = "Subnet의 purpose"
  type        = string
}