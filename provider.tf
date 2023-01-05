provider "google" {
  credentials = file("account.json")
  project     = "ite-project-370218"
  region      = "us-central1"
}
