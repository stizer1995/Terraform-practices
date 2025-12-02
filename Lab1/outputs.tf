output "application_name" {
    value = var.myapplication
}

output "environment_prefix" {
    value = local.environment_prefix
}

output "suffix" {
  value = random_string.suffix.result
}

output "instance_count" {
  value = var.instance_count
}


output "primary_region" {
  value = var.regions[0]
}

output "priamry_region_instance_count" {
  value = var.region_instance_count["westus"]
}