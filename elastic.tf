data "ec_stack" "latest" {
  version_regex = "latest"
  region        = "westeurope"
}

provider "ec" {
}

resource "ec_deployment" "example_azure" {
  # Optional name.
  name = "example-setup"

  # Mandatory fields
  region                 = data.ec_stack.latest.region
  version                = data.ec_stack.latest.version
  deployment_template_id = "azure-io-optimized-v3"

  elasticsearch {}

  kibana {}

  apm {}

  enterprise_search {}
}