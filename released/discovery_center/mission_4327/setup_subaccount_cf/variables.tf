######################################################################
# Customer account setup
######################################################################
# subaccount
variable "globalaccount" {
  type        = string
  description = "The globalaccount subdomain."
}
# subaccount
variable "subaccount_name" {
  type        = string
  description = "The subaccount name."
}
# Region
variable "region" {
  type        = string
  description = "The region where the project account shall be created in."
  default     = "us10"
}

# CLI server
variable "cli_server_url" {
  type        = string
  description = "The BTP CLI server URL."
  default     = "https://cpcli.cf.sap.hana.ondemand.com"
}

variable "subaccount_admins" {
  type        = list(string)
  description = "Defines the colleagues who are added to each subaccount as subaccount administrators."
  default     = ["jane.doe@test.com", "john.doe@test.com"]
}

variable "subaccount_service_admins" {
  type        = list(string)
  description = "Defines the colleagues who are added to each subaccount as subaccount service administrators."
  default     = ["jane.doe@test.com", "john.doe@test.com"]
}
variable "btp_user" {
description = "BTP user email"
type = string
default = "DL_65DDA8EBA97EAA0134EEB5DC@global.corp.sap"
}

# Plan_name update
variable "bas_plan_name" {
description = "BAS plan"
type = string
default = "free-tier"
}

variable "build_workzone_plan_name" {
description = "Build Workzone plan"
type = string
default = "free-tier"
}

variable "hana-cloud_plan_name" {
description = "hana-cloud plan"
type = string
default = "free"
}
