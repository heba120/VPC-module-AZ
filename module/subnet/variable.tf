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
variable "subnets" {
  type = map(object({
    address_prefixes = string
  }))

  default = {
    subnet-app = {
      address_prefixes = "10.0.1.0/24"
    }
    subnet-web = {
      address_prefixes = "10.0.2.0/24"
    }
  }
}
variable "net_sg" {
  type        = string
  default     = "net_sg_module"
  description = "The name of the network security group"
}