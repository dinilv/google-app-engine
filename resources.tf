resource "google_project" "gcpa" {
  name       = "gcpa"
  project_id = "gcpa-415907"
}

resource "google_app_engine_application" "quote_daily_app" {
  project     = google_project.gcpa.project_id
  location_id = "us-central"
}