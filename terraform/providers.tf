terraform {
  required_version = ">= 1.15.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.3.0"
    }
  }
}
