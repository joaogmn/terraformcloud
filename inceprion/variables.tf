variable "prefix" {
  type        = string
  description = "(Required) This prefix will be included in the name of most resources."
}

variable "project" {
  type        = string
  description = "(Required) Application project name."
}

variable "environment" {
  type        = string
  description = "(Required) Application environment for deployment."
}

variable "region" {
  type        = string
  description = "(Optional) The region where the resources are created. Defaults to us-east-1."
  default     = "westus3"
}

variable "resource_group_name" {
  type        = string
  description = "tcbreakglass"
 default     = "tcbreakglass"
}

variable "resource_group_location" {
  type        = string
  description = "westus3"
  #default = "westus3"
}

variable "nsg_name" {
  type        = string
  description = "westus3"

}

variable "vnet_name" {
  type        = string
  description = "westus3"

}
