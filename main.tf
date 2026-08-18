module "network" {
  source     = "../terraform-network-module/v1"
  cidr_block = "10.2.0.0/16"
}

resource "null_resource" "analytics" {
  triggers = {
    vpc_id = module.network.vpc_id
  }
}
