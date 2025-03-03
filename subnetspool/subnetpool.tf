resource "mgc_network_subnetpools" "subnetpool" {
  name        = var.name
  description = var.description
  type        = var.type
  cidr        = var.cidr
}

output "subnetpool" {
  value = mgc_network_subnetpools.subnetpool
}
