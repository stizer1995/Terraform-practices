variable "myapplication" {
  type = string

  validation {
    condition     = length(var.myapplication) <= 12
    error_message = "application name must be less or equal to 12 characters"
  }
}

variable "environment_name" {
  type = string
}

variable "api_key" {
  type      = string
  sensitive = true
}

variable "instance_count" {
  type = number

  validation {
    condition     = var.instance_count >= local.min_noded && var.instance_count <= local.max_nodes && var.instance_count % 2 != 0
    error_message = "the value must be between 1 and 9 and not odd"
  }
}

variable "enabled" {
  type = bool
}

variable "regions" {
  type = list(string)
}

variable "region_instance_count" {
  type = map(string)
}

variable "region_set" {
  type = set(string)
}
