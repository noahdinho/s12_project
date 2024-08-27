

module "lightsail_serv1" {
  source = "../lightsail"
  inst_name = "light-sever"
  blueprint_id = "amazon_linux_2023"
  bundle_id = "small_1_0"
  az = "us-east-1"
  key-name = "default"
  env = "Dev"
  Team = "TOM1"
}