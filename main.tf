terraform {
  required_providers {
    ec = {
      source = "elastic/ec"
      version = "0.3.0"
    }
  }

  backend "remote" {
    organization = "tjololo"

    workspaces {
      name = "gh-elastic-demo"
    }
  }
}

