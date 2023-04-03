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
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/main:provider.tf
=======
>>>>>>> cbe2263fa6172ac16d4a40147b8ad75aa3efa255:provider.tf
>>>>>>> origin/main
=======
>>>>>>> cbe2263fa6172ac16d4a40147b8ad75aa3efa255:provider.tf
=======
>>>>>>> origin/main:provider.tf
>>>>>>> origin/master
>>>>>>> 9891968df3bb876b264b931bdbdd6aa22b7f489f
