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

