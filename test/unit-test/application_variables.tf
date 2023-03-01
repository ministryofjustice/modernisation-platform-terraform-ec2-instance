# See nomis-development.tf etc for the environment specific settings
locals {
  accounts = {
    test = local.testing-test
  }

  account_id         = "836052629367"
  environment_config = local.accounts[local.environment]
}
