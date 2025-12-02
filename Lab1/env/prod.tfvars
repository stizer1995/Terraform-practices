environment_name = "prod"
instance_count   = 3
enabled          = false
regions          = ["westus", "eastus"]
region_instance_count = {
  "westus" = 3
  "eastus" = 7
}
region_set = ["westus", "eastus"]  
