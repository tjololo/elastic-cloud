# data "ec_stack" "latest" {
#   version_regex = "latest"
#   region        = "azure-westeurope"
# }

# resource "ec_deployment" "example_azure" {
#   # Optional name.
#   name = "example-setup"

#   # Mandatory fields
#   region                 = data.ec_stack.latest.region
#   version                = data.ec_stack.latest.version
#   deployment_template_id = "azure-io-optimized-v3"

#   elasticsearch {
#     autoscale = "false"

#     topology {
#       id         = "hot_content"
#       size       = "1g"
#       zone_count = 1
#     }

#     topology {
#       id   = "warm"
#       size = "0g"
#     }

#     topology {
#       id   = "cold"
#       size = "0g"
#     }

#     topology {
#       id   = "coordinating"
#       size = "0g"
#     }

#     topology {
#       id   = "frozen"
#       size = "0g"
#     }

#     topology {
#       id   = "ml"
#       size = "0g"
#     }

#     topology {
#       id   = "master"
#       size = "0g"
#     }
#   }

#   kibana {
#     topology {
#       size       = "1g"
#       zone_count = 1
#     }
#   }

#   apm {
#     topology {
#       size = "0.5g"
#     }
#   }
#   enterprise_search {
#     topology {
#       size       = "2g"
#       zone_count = 1
#     }

#   }
# }
