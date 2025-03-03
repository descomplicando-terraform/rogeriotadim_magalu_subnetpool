module "subnetpool" {
  source      = "../"
  name        = var.name
  description = "subnetpool test"
  cidr        = var.cidr
  type        = "default"
}