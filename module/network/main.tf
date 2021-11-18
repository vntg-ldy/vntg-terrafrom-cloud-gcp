module "vpc" {
  source = "./vpc"

  project_id                  = var.vpc.project_id
  region                      = var.vpc.region
  vpc_name                    = var.vpc.name
  vpc_auto_create_subnetworks = var.vpc.auto_create_subnetworks
  vpc_routing_mode            = var.vpc.routing_mode
  vpc_mtu                     = var.vpc.mtu
}

module "subnet" {
  source = "./subnet"
  count  = length(var.subnet)

  project_id               = var.vpc.project_id
  region                   = var.vpc.region
  subnetwork_name          = element(var.subnet, count.index).name
  subnetwork_ip_cidr_range = element(var.subnet, count.index).ip_cidr_range
  vpc_name                 = module.vpc.name
  subnetwork_role          = element(var.subnet, count.index).role
  subnetwork_purpose       = element(var.subnet, count.index).purpose
}