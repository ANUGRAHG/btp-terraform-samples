###############################################################################################
# Setup of names in accordance to naming convention
###############################################################################################
locals {
  random_uuid               = uuid()
  project_subaccount_domain = "btp-developers-guide${local.random_uuid}"
  project_subaccount_cf_org = substr(replace("${local.project_subaccount_domain}", "-", ""), 0, 32)
}
###############################################################################################
# Creation of subaccount
###############################################################################################
resource "btp_subaccount" "project" {
  name      = var.subaccount_name
  subdomain = local.project_subaccount_domain
  region    = lower(var.region)
}
###############################################################################################
# Assignment of users as sub account administrators
###############################################################################################
resource "btp_subaccount_role_collection_assignment" "subaccount-admins" {
  for_each             = toset("${var.subaccount_admins}")
  subaccount_id        = btp_subaccount.project.id
  role_collection_name = "Subaccount Administrator"
  user_name            = each.value
}
