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

variable "api_management_name" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "apim" # Default value, ap
}


variable "api_management_api_name" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "apimapi" # Default value, can be overridden in .tfvars files
}

variable "url_template" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "url" # Default value, can be overridden in .tfvars files
}