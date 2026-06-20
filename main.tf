module "vnet" {
  source              = "./module/vnet"
  vnet_address_space  = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "rg-module"
}
module "subnet" {
  source              = "./module/subnet"
  vnet_name           = module.vnet.vnet_name
  resource_group_name = module.vnet.resource_group_name
  location            = module.vnet.location
  subnets = {
    subnet1 = {
      address_prefixes = "10.0.1.0/24"
    }
  }
}
module "vm" {
  source              = "./module/vm"
  resource_group_name = module.vnet.resource_group_name
  vnet_name           = module.vnet.vnet_name
  location            = module.vnet.location
  subnet_id           = module.subnet.subnet_ids
}