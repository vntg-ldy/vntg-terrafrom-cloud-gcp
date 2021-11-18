variable "project_id" {
  description = "VPC의 Project ID"
  type        = string
}

variable "region" {
  description = "VPC의 Region"
  type        = string
}

variable "vpc_name" {
  description = "VPC의 Name"
  type        = string
}

variable "vpc_auto_create_subnetworks" {
  description = "VPC내 자동 서브넷 구성 여부"
  type        = bool
}

variable "vpc_routing_mode" {
  description = "VPC의 Routing mode"
  type        = string
}

variable "vpc_mtu" {
  description = "VPC의 mtu"
  type        = number
}