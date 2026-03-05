variable "name_prefix" {
  type        = string
  description = "Prefix for the resource names."
  default     = "pa"
}

variable "template_name" {
  type        = string
  description = "Template name"
  default     = "t1"
}

variable "subnetwork_self_link" {
  type        = string
  description = "Subnetwork self link"
  default     = ""
}

variable "ilb_ip" {
  type        = string
  description = "IP reserved for Internal Load Balancer"
  default     = ""
}


variable "project_id" {
  type = string
  default = ""
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "zone" {
  type        = string
  description = "For GCE staging, use the GCE zone and the CCFE zone will be inferred."
  default  = "us-central1-a"
}

