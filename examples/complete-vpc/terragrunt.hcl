include {
  path = find_in_parent_folders()
}

terraform {
  source = "..//modules/complete"
}

inputs = {
  name        = "example"
  region      = "us-east-2"
  environment = "test"

  vpc_cidr = "10.0.0.0/16"
}
