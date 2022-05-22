resource "citrixadc_lbvserver" "tf_lbvserver" {
  ipv46       = "10.10.10.33"
  name        = "tf_lbvserver"
  port        = 80
  servicetype = "HTTP"
}

resource "citrixadc_service" "tf_service1" {
    name = "tf_service1"
    ip = "192.168.43.33"
    servicetype  = "HTTP"
    port = 80
}

resource "citrixadc_service" "tf_service2" {
    name = "tf_service2"
    ip = "192.168.43.34"
    servicetype  = "HTTP"
    port = 80
}

resource "citrixadc_lbvserver_service_binding" "tf_binding1" {
  name = citrixadc_lbvserver.tf_lbvserver.name
  servicename = citrixadc_service.tf_service1.name
  weight = 1
}

resource "citrixadc_lbvserver_service_binding" "tf_binding2" {
  name = citrixadc_lbvserver.tf_lbvserver.name
  servicename = citrixadc_service.tf_service2.name
  weight = 1
}
