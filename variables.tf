variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "description" {
  description = "The description for the VPC"
  type        = string
  default     = "vpc created by Terraform"
}

variable "type" {
  description = "The type of the subnet pool"
  type        = string
  default     = "default"
  validation {
    condition     = var.type == "default" || var.type == "pip"
    error_message = "The type must be default or pip"
  }
}

variable "cidr" {
  description = "The CIDR block for the subnet pool"
  type        = string
}