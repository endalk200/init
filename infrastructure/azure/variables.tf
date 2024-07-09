variable "resource_group_name" {
  type    = string
  default = "remote_dev"
}

variable "region" {
  type        = string
  default     = "eastus"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "endalk200"
}
