variable "vpc_project_name" {
  description = "VPC가 속해있는 프로젝트 ID"
  type        = string
}

variable "vpc_name" {
  description = "VPC의 Resource name"
  type        = string
  default     = "tc-vpc-1"
}

variable "vpc_routing_mode" {
  description = "VPC의 Routing mode"
  type        = string
  default     = "REGIONAL"
}

variable "vpc_mtu" {
  description = "VPC의 mtu"
  type        = number
  default     = 1460
}

variable "vpc_web_subnet" {
  description = "VPC의 WEB용 서브넷 정의"
  type        = map(any)
  default = {
    name          = "tc-web-subnet-1"
    ip_cidr_range = "192.168.0.0/24"
    role          = "ACTIVE"
    purpose       = "PRIVATE"
  }
}

variable "vpc_was_subnet" {
  description = "VPC의 WAS용 서브넷 정의"
  type        = map(any)
  default = {
    name          = "tc-was-subnet-1"
    ip_cidr_range = "192.168.1.0/24"
    role          = "ACTIVE"
    purpose       = "PRIVATE"
  }
}

variable "vpc_proxy_subnet" {
  description = "VPC의 Proxy용 서브넷 정의"
  type        = map(any)
  default = {
    name          = "tc-proxy-subnet-1"
    ip_cidr_range = "192.168.2.0/24"
    role          = "ACTIVE"
    purpose       = "INTERNAL_HTTPS_LOAD_BALANCER"
  }
}

variable "vpc_region" {
  description = "VPC의 region"
  type        = string
}