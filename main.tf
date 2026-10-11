resource "consul_agent_service" "agent_services" {
  for_each = var.agent_services

  name    = each.value.name
  address = each.value.address
  port    = each.value.port
  tags    = each.value.tags
}

