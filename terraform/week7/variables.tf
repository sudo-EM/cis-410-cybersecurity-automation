variable "project_id" {
  description = "Your GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "my_ip_cidr" {
  description = "Your public IP for SSH access"
  type        = string
}