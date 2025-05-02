resource "azurerm_resource_group" "ResourceGroup_Block" {
  name     = var.rg_name
  location = var.rg_location
  tags = {
    Ambiente  = "Homologação",
    ManagedBy = "Terraform",
    StartDate = "01-05-2025",
    Projeto   = "AzureProject"
  }
}