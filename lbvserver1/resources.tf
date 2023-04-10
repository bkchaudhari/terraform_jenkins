resource "citrixadc_lbvserver" "jenkins_lb" {
  name        = "jenkins_lb"
  ipv46       = "10.10.10.11"
  port        = "80"
  servicetype = "HTTP"
}
resource "citrixadc_service" "test_service" {
  name = "test_service_jenkins"
  ip = "192.168.100.10"
  servicetype  = "HTTP"
  port = 80
}

resource "citrixadc_lbvserver_service_binding" "test_binding" {
  name = citrixadc_lbvserver.jenkins_lb.name
  servicename = citrixadc_service.test_service.name
  weight = 1
}
