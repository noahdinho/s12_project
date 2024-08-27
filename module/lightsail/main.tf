
resource "aws_lightsail_instance" "server1" {
  name = var.inst_name
  blueprint_id = var.blueprint_id
  bundle_id = var.bundle_id
  availability_zone = var.az
  key_pair_name = var.key-name
  tags = {
    env  = var.env
    team   = var.Team
    "create by" = "Terraform_Noah"
  }

}