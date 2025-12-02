
resource "random_string" "suffix" {

  length = 6

  upper = false


}


locals {
  environment_prefix= "${var.myapplication}-${var.environment_name}-${random_string.suffix.result}"
}


