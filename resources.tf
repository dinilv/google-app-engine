data "google_project" "existing" {
  project_id = "gcpa-415907"
}


resource "google_app_engine_application" "quote_daily_app" {
  project     = data.google_project.existing.project_id
  location_id = "us-central1" # Use the region directly here
}

resource "google_artifact_registry_repository" "docker_images" {
  location      = "us-central1" # And here
  repository_id = "app-engine"
  description   = "example docker repository"
  format        = "DOCKER"
}
