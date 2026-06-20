variable "vnet_address_space" {
  description = "Address space for virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-dev"
}
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastus"
}
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-module"
}