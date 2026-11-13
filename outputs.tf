output "agent_services_id" {
  description = "Map of id values across all agent_services, keyed the same as var.agent_services"
  value       = { for k, v in consul_agent_service.agent_services : k => v.id }
}
output "agent_services_address" {
  description = "Map of address values across all agent_services, keyed the same as var.agent_services"
  value       = { for k, v in consul_agent_service.agent_services : k => v.address }
}
output "agent_services_name" {
  description = "Map of name values across all agent_services, keyed the same as var.agent_services"
  value       = { for k, v in consul_agent_service.agent_services : k => v.name }
}
output "agent_services_port" {
  description = "Map of port values across all agent_services, keyed the same as var.agent_services"
  value       = { for k, v in consul_agent_service.agent_services : k => v.port }
}
output "agent_services_tags" {
  description = "Map of tags values across all agent_services, keyed the same as var.agent_services"
  value       = { for k, v in consul_agent_service.agent_services : k => v.tags }
}

