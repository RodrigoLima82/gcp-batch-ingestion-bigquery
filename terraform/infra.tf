terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion-poc"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "grey-sort-challenge"
  region = "us-central1"
}

#resource "google_storage_bucket" "funky-bucket" {
#  name = "batch-ingestion-pipeline-poc"
#  storage_class = "REGIONAL"
#  location  = "us-central1"
#}
