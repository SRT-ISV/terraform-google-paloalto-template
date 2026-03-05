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

output "template_self_link" {
  description = "Self link of the instance template"
  value       = google_compute_instance_template.main.self_link 
}

output "template_id" {
  description = "ID of the instance template"
  value       = google_compute_instance_template.main.id 
}

output "gateway_ip" {
  description = "ID of the instance template"
  value       = data.google_compute_subnetwork.gw_ip.gateway_address
}