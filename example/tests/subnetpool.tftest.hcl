variables {
  name = "subnetpool-test"
  cidr = "172.16.77.0/24"
}

run "create_subnetpool" {
  command = apply

  assert {
    condition     = module.subnetpool.subnetpool_name == var.name
    error_message = "invalid name"
  }

  assert {
    condition     = module.subnetpool.subnetpool_cidr == var.cidr
    error_message = "invalid cidr"
  }

}
