variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "westus2"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "Standard_B1ls"
}

