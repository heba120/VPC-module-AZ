variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastus"
}
variable "subnet_id" {
  type = map(string)
}
