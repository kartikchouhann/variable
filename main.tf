resource "google_compute_instance" "vm" {
  name         = "my-vvm"
  machine_type = "n1-standard-1"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      image = "centos-stream-8-v20221206"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the instance a public IP address
    }
  }
}
