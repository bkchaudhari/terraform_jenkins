vip_config = {
  vip = "10.10.10.11"
}

backend_service_config = {
  clttimeout   = 40
  backend_port = 8080
}

backend_services = [
  "172.33.50.100",
  "172.33.50.101",
]
