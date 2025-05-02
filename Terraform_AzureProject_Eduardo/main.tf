# Modulos

module "ResourceGroup_Module" {
  source      = "./ResourceGroup_MOD"
  rg_name     = "MyResourceGroup"
  rg_location = "East US"
}

module "VirtualNetwork_Module" {
  source      = "./VirtualNetwork_MOD"
  rg_name     = module.ResourceGroup_Module.output_ResourceGroup_Name
  rg_location = module.ResourceGroup_Module.output_ResourceGroup_Location
  vnet_name   = "VNET-TESTE"
  subnet_name = "SNET-TESTE"
  nsg_id      = module.NetworkSecurityGroup_Module.output_NetworkSecurityGroup_ID
}

module "NetworkSecurityGroup_Module" {
  source      = "./NetworkSecurityGroup_MOD"
  rg_name     = module.ResourceGroup_Module.output_ResourceGroup_Name
  rg_location = module.ResourceGroup_Module.output_ResourceGroup_Location
  nsg_name    = "NSG-TESTE"
}