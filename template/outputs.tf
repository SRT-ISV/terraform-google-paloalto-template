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