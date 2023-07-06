module "database-servers" {
  for_each = var.database-servers

  source = "./module"
  component_name = each.value["name"]
  instance_type = each.value["instance_type"]
  password = lookup(each.value, "password", "null" )
  env = var.env
  provisioner = true

}
module "app-servers" {
  depends_on = [module.database-servers]
  for_each = var.app-servers

  source = "./module"
  component_name = each.value["name"]
  instance_type = each.value["instance_type"]
  password = lookup(each.value, "password", "null" )
  env = var.env

}