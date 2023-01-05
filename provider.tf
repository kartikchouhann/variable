provider "google" {
  credentials = file("./KEY.JSON")
  project     = "ite-project-370218"
  region      = "us-central1"
}
