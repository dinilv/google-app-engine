terraform {
  backend "gcs" {
    bucket = "gcp-terraform-state-testing"
    prefix = "terraform/state"
  }
}