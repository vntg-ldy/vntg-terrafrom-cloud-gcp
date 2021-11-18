variable "vpc" {
  description = "VPC 전체 정보"
  type = object({
    project_id              = string,
    region                  = string,
    name                    = string,
    auto_create_subnetworks = bool,
    routing_mode            = string
    mtu                     = number
  })
}

variable "subnet" {
  description = "VPC내 Subnet list"
  type = list(object({
    name          = string
    ip_cidr_range = string
    role          = string
    purpose       = string
  }))
  default = [
    {
      name          = "tc-web-subnet-1"
      ip_cidr_range = "192.168.0.0/24"
      role          = "ACTIVE"
      purpose       = "PRIVATE"
    },
    {
      name          = "tc-was-subnet-1"
      ip_cidr_range = "192.168.1.0/24"
      role          = "ACTIVE"
      purpose       = "PRIVATE"
    },
    {
      name          = "tc-proxy-subnet-1"
      ip_cidr_range = "192.168.2.0/24"
      role          = "ACTIVE"
      purpose       = "INTERNAL_HTTPS_LOAD_BALANCER"
    }
  ]
}