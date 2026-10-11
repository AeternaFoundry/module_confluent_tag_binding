output "tag_bindings_id" {
  description = "Map of id values across all tag_bindings, keyed the same as var.tag_bindings except keys with no id are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_bindings_credentials" {
  description = "Map of credentials values across all tag_bindings, keyed the same as var.tag_bindings except keys with no credentials are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "tag_bindings_disable_wait_for_ready" {
  description = "Map of disable_wait_for_ready values across all tag_bindings, keyed the same as var.tag_bindings except keys with no disable_wait_for_ready are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.disable_wait_for_ready if v.disable_wait_for_ready != null }
}
output "tag_bindings_entity_name" {
  description = "Map of entity_name values across all tag_bindings, keyed the same as var.tag_bindings except keys with no entity_name are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.entity_name if v.entity_name != null && length(v.entity_name) > 0 }
}
output "tag_bindings_entity_type" {
  description = "Map of entity_type values across all tag_bindings, keyed the same as var.tag_bindings except keys with no entity_type are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.entity_type if v.entity_type != null && length(v.entity_type) > 0 }
}
output "tag_bindings_rest_endpoint" {
  description = "Map of rest_endpoint values across all tag_bindings, keyed the same as var.tag_bindings except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "tag_bindings_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all tag_bindings, keyed the same as var.tag_bindings except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "tag_bindings_tag_name" {
  description = "Map of tag_name values across all tag_bindings, keyed the same as var.tag_bindings except keys with no tag_name are omitted"
  value       = { for k, v in confluent_tag_binding.tag_bindings : k => v.tag_name if v.tag_name != null && length(v.tag_name) > 0 }
}

