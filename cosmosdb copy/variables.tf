variable "location" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "West US 2 " # Default value, location name to create the resource in it
}

variable "resource_group_name" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "rsg" # Default value, resource group name
}

variable "cosmosdb_name" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "cosmos" # Default value, can be overridden in .tfvars files
}