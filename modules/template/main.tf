/**
 * Copyright 2026 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

################# Instance #################

data "google_compute_subnetwork" "gw_ip" {
  self_link = var.subnetwork_self_link
}


data "template_file" "interceptor_startup_script" {
  template = file("${path.module}/files/script.sh.tftpl")

  vars = {
    gateway_ip = "${data.google_compute_subnetwork.gw_ip.gateway_address}"
    ilb_ip     = var.ilb_ip
    
  }
}

resource "google_compute_instance_template" "main" {
  name  = var.template_name
  project      = var.project_id
  machine_type = "e2-micro"
  region       = var.region

  disk {
    source_image = "debian-cloud/debian-11"
    boot         = true
    disk_size_gb = 10
  }

  network_interface {
    subnetwork = var.subnetwork_self_link
  }

  service_account {
    scopes = [
      "logging-write",
      "storage-rw"
    ]
  }

  metadata = {
    google-logging-enabled  = "true"
    enable-guest-attributes = "true"
    startup-script          = data.template_file.interceptor_startup_script.rendered
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      # Avoid diffs when someone SSH to the VM.
      metadata["ssh-keys"],
    ]
  }
}




