module "ec2" {
  source = "./modules/ec2"
  for_each = var.tool
  tool = each.key
  instance-type = each.value["instance_type"]
}

