module "subnetpool" {
  source      = "../"
  name        = var.name
  description = "subnetpool test"
  cidr        = var.cidr
  type        = "default"
}

output "subnetpool" {
  value = module.subnetpool.subnetpool

}

output "subnetpool_name" {
  value = module.subnetpool.subnetpool.name
}