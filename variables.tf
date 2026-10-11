variable "agent_services" {
  description = <<EOT
Map of agent_services, attributes below
Required:
    - name
Optional:
    - address
    - port
    - tags
EOT

  type = map(object({
    name    = string
    address = optional(string)
    port    = optional(number)
    tags    = optional(list(string))
  }))
}

