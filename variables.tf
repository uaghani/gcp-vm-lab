variable "project_id" {
  description = "Your GCP project ID (not the project name)"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 5
}
