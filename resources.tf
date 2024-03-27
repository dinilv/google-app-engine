data "google_project" "existing" {
 project_id = "gcpa-415907"
}

resource "google_artifact_registry_repository" "docker_images" {
 project       = data.google_project.existing.project_id
 location      = "us-central1"
 repository_id = "app-engine"
 description   = "example docker repository"
 format        = "DOCKER"
}
