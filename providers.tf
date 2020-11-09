terraform {
  required_providers {
    ilert = {
      source  = "iLert/ilert"
      version = "~> 1.1.2"
    }

    grafana = {
      source  = "grafana/grafana"
      version = "1.7.0"
    }
  }
}

provider "ilert" {
  organization = var.organization
  username     = var.username
  password     = var.password
}

provider "grafana" {
  url  = var.grafana_url
  auth = var.grafana_token
}
