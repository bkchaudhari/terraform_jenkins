vip_config = {
  vip = "10.10.10.100"
}

backend_service_config = {
  clttimeout   = 40
  backend_port = 8080
}

backend_services = [
  "192.33.50.110",
  "192.33.50.111",
]
