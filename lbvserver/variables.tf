variable "vip_config" {
  type        = map(string)
  description = "Describes the friendly name (key=lbname),VIP(key=vip), port(key=port) and service type (key=servicetype) for the LB"
}

variable "backend_service_config" {
  type        = map(string)
  description = "Describes port(key=port) and service type (key=servicetype) for the backend services"
}

variable "backend_services" {
  description = "The list of backend services (ip address:port list)"
  type        = list(string)
}
/*
variable "ns_username" {
  description = "ADC administrator username"
  type        = string
  sensitive   = true
}
variable "ns_password" {
  description = "ADC administrator password"
  type        = string
  sensitive   = true
}*/
