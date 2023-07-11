locals {
  name = var.env != "" ? "${var.component_name}-${var.env}" : var.component_name
  db_commands = [
    "rm -rf roboshop-scripting",
    "git clone http://github.com/naveen2513/roboshop-scripting.git ",
    "cd roboshop-scripting",
    "sudo bash ${var.component_name}.sh ${var.password}"
  ]
  app_commands = [
   # "sudo labauto ansible",
   # "ansible-pull -i localhost, -U https://github.com/naveen2513/ansible-practice roboshop.yml -e env=${var.env} -e role_name= ${var.component_name} "

  ]
}