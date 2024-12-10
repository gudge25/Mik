terraform {
  required_version = ">= 1.0.0"
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = "1.62.0"
    }
  }
}
