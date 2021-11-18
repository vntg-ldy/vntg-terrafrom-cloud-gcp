resource "google_compute_subnetwork" "subnetwork" {
  provider = google-beta

  project       = var.project_id
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  region        = var.region
  network       = var.vpc_name
  role          = var.subnetwork_role
  purpose       = var.subnetwork_purpose
}