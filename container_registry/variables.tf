####################### Variables ##########################
variable "in_acr_name" {
  type = string
}

variable "in_resource_group_location" {
  type = string
}

variable "in_resource_group_name" {
  type = string
}

variable "in_acr_sku" {
  type = string
}

variable "in_admin_enabled" {
  type    = bool
  default = false
}

variable "in_uai_id" {
  type = string
}

/* variable "in_uai_client_id" {
  type = string
}

variable "in_keyvaultkey_id" {
  type = string
} */