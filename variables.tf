// Define variables
variable "storage_account_name" {
  description = "Name of the storage account."
  type = string
  default = ""
}

variable "container_name" {
  description = "Name of the storage container."
  type = string
  default = ""
}

variable "container_access_type" {
  description = "Access level of the storage container."
  type = string
  default = ""
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type = string
  default = ""
}

variable "location" {
  description = "Location of the resource group and storage account."
  type = string
  default = ""
}

variable "account_tier" {
  description = "Performance tier of the storage account."
  type = string
  default = ""
}

variable "account_replication_type" {
  description = "Replication type of the storage account."
  type = string
  default = ""
}

variable "subscription_id" {
  description = "Subscription ID for Azure account"
  type = string
  default = ""
}

variable "client_id" {
  description = "Client ID for Azure account"
  default = ""
}

variable "client_secret" {
  description = "Client Secret for Azure account"
  type = string
  default = ""
}

variable "tenant_id" {
  description = "Tenant ID for Azure account"
  type = string
  default = ""
}

# Define input variables
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}