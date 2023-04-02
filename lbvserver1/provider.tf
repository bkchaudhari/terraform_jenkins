<<<<<<< HEAD:lbvserver1/provider.tf
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
=======
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
>>>>>>> origin/main:provider.tf
