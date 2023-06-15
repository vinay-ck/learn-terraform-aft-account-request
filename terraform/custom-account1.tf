# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "vinay.naidu+custom@cloud-kinetics.com"
    AccountName  = "enterprise-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Custom-OU"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "vinay.naidu+custom@cloud-kinetics.com"
    SSOUserFirstName = "Vinay"
    SSOUserLastName  = "Custom"
  }

  account_tags = {
    "ABC:Owner"       = "vinay.naidu+custom@cloud-kinetics.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "3246577"
  }

  change_management_parameters = {
    change_requested_by = "Vinay"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    type = "enterprise-apps"
  }

  account_customizations_name = "enterprise-customizations"
}