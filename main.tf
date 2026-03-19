variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_03_45d95a06c687-30086-24494"
    prefix  = "terraform/state/lab01"
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = true 
}
