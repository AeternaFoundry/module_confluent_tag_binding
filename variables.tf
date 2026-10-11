variable "tag_bindings" {
  description = <<EOT
Map of tag_bindings, attributes below
Required:
    - entity_name
    - entity_type
    - tag_name
Optional:
    - disable_wait_for_ready
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    entity_name            = string
    entity_type            = string
    tag_name               = string
    disable_wait_for_ready = optional(bool)
    rest_endpoint          = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

