variable "myapplication" {
  type = string

  validation {
    condition     = length(var.myapplication) <=12
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
