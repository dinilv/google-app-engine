data "google_project" "existing" {
  project_id = "gcpa-415907"
}

provider "google" {
 project = data.google_project.existing.project_id
 region = "us-central1"
}

resource "google_app_engine_application" "quote_daily_app" {
  project     = data.google_project.existing.project_id
  location_id = provider.google.region
}

resource "google_artifact_registry_repository" "docker_images" {
  location      = provider.google.region
  repository_id = "app-engine"
  description   = "example docker repository"
  format        = "DOCKER"
}
