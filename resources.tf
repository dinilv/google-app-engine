data "google_project" "existing" {
  project_id = "gcpa-415907"
}

resource "google_app_engine_application" "quote_daily_app" {
  project     = data.google_project.existing.project_id
  location_id = "us-central"
}
