variable "api_key" {
  description = "API Key"
  type        = string
  sensitive   = true
}

variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the subnet pool"
  type        = string
}