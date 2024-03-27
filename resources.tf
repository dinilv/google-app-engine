data "google_project" "existing" {
  project_id = "gcpa-415907"
}


resource "google_app_engine_application" "quote_daily_app" {
  project     = data.google_project.existing.project_id
  location_id = "us-central1" 
  lifecycle {
    create_before_destroy = true
 }
}

resource "google_artifact_registry_repository" "docker_images" {
  project       = data.google_project.existing.project_id
  location      = "us-central1" 
  repository_id = "app-engine"
  description   = "example docker repository"
  format        = "DOCKER"
}
