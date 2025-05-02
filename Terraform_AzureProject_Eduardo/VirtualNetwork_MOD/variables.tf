variable "rg_name" {
  type        = string
  description = "Nome do Grupo de Recursos"
}
variable "rg_location" {
  type        = string
  description = "Localização do Grupo de Recursos"
}
variable "vnet_name" {
  type        = string
  description = "nome da Virtual Network"
}

variable "subnet_name" {
  type        = string
  description = "Nome da Subnet"
}

variable "nsg_id" {
  type        = string
  description = "ID do NSG"
}

