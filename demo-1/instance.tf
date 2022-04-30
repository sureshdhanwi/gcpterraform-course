resource "google_compute_instance" "test-instance" {
 name         = "test-instance"
 machine_type = "f1-micro"
 zone         = "us-central1-a"

 boot_disk {
   initialize_params {
     image = "ubuntu-os-cloud/ubuntu-1604-lts"
   }
 }

// Make sure flask is installed on all new instances for later steps
 metadata_startup_script = "sudo apt-get update"

 network_interface {
   network = "default"

   access_config {
     // the VM an external ip address
   }
 }
}
.

