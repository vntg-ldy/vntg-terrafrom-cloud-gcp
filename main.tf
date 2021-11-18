provider "google" {
  project = var.vpc_project_name
  region  = var.vpc_region
  zone    = "${var.vpc_region}-a"
}

module "network" {
  source = "./module/network"

  vpc = {
    project_id              = var.vpc_project_name
    region                  = var.vpc_region
    name                    = var.vpc_name
    auto_create_subnetworks = false
    routing_mode            = var.vpc_routing_mode
    mtu                     = var.vpc_mtu
  }

  subnet = [
    var.vpc_web_subnet,
    var.vpc_was_subnet,
    var.vpc_proxy_subnet
  ]
}