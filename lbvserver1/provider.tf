
terraform {
    required_providers {
        citrixadc = {
            source = "citrix/citrixadc"
        }
    }
}
provider "citrixadc" {
  endpoint = "http://172.16.149.100"
  username = var.ns_username
  password = var.ns_password
}

