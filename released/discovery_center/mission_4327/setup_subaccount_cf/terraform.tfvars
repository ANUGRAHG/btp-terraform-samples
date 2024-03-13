# ------------------------------------------------------------------------------------------------------
# Provider configuration
# ------------------------------------------------------------------------------------------------------
# Your global account subdomain
globalaccount        = "terraformdemocanary"
region               = "eu12"
subaccount_name      = "testgh"
btp_user = "anugrah.gupta@sap.com"
# ------------------------------------------------------------------------------------------------------
# Project specific configuration (please adapt!)
# ------------------------------------------------------------------------------------------------------
# To add extra users to the subaccount, the user running the script becomes the admin, without inclusion in admins.
subaccount_admins         = ["prajin.ollekkatt.prakasan@sap.com"]
subaccount_service_admins = ["prajin.ollekkatt.prakasan@sap.com"]

cf_space_managers   = ["prajin.ollekkatt.prakasan@sap.com"]
cf_space_developers = ["prajin.ollekkatt.prakasan@sap.com"]
cf_space_auditors   = ["prajin.ollekkatt.prakasan@sap.com"]

cf_org_auditors   = ["prajin.ollekkatt.prakasan@sap.com"]
cf_org_managers   = ["prajin.ollekkatt.prakasan@sap.com"]
cf_org_billing_managers   = ["prajin.ollekkatt.prakasan@sap.com"]

#------------------------------------------------------------------------------------------------------
# Entitlements plan update
#------------------------------------------------------------------------------------------------------
# For production use of Business Application Studio, upgrade the plan from the `free-tier` to the appropriate plan e.g standard-edition
bas_plan_name = "free-tier"
#-------------------------------------------------------------------------------------------------------
#For production use of Build Workzone, upgrade the plan from the `free-tier` to the appropriate plan e.g standard
build_workzone_plan_name = "free-tier"
#--------------------------------------------------------------------------------------------------------
# For production use of HANA, upgrade the plan from the `free-tier` to the appropriate plan e.g hana
hana-cloud_plan_name = "free"
