resource "google_compute_instance" "vm" {
  name         = "my-vm"
  machine_type = "n1-standard-1"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the instance a public IP address
    }
  }
}
