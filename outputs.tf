output "agent_services_id" {
  description = "Map of id values across all agent_services, keyed the same as var.agent_services except keys with no id are omitted"
  value       = { for k, v in consul_agent_service.agent_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_services_address" {
  description = "Map of address values across all agent_services, keyed the same as var.agent_services except keys with no address are omitted"
  value       = { for k, v in consul_agent_service.agent_services : k => v.address if v.address != null && length(v.address) > 0 }
}
output "agent_services_name" {
  description = "Map of name values across all agent_services, keyed the same as var.agent_services except keys with no name are omitted"
  value       = { for k, v in consul_agent_service.agent_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_services_port" {
  description = "Map of port values across all agent_services, keyed the same as var.agent_services except keys with no port are omitted"
  value       = { for k, v in consul_agent_service.agent_services : k => v.port if v.port != null }
}
output "agent_services_tags" {
  description = "Map of tags values across all agent_services, keyed the same as var.agent_services except keys with no tags are omitted"
  value       = { for k, v in consul_agent_service.agent_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

