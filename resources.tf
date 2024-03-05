data "google_project" "existing" {
  name = "gcpa"
  project_id = "gcpa-415907"
}

resource "google_project" "gcpa" {
  count = data.google_project.existing ? 0 : 1
  name       = count ? "gcpa" : null 
  project_id = count ? "gcpa-415907": null
}

resource "google_app_engine_application" "quote_daily_app" {
  project     = data.gcpa.project_id
  location_id = "us-central"
}