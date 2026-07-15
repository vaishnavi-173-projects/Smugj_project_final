variable "resource_group_name" {
 type        = string
 description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "East US"
}

variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry (Must be globally unique, lowercase alphanumeric only)"
}

variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine"
  default     = "smugj-flask-vm"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
  default     = "azureuser"
}