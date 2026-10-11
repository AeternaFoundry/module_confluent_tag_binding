resource "confluent_tag_binding" "tag_bindings" {
  for_each = var.tag_bindings

  entity_name            = each.value.entity_name
  entity_type            = each.value.entity_type
  tag_name               = each.value.tag_name
  disable_wait_for_ready = each.value.disable_wait_for_ready
  rest_endpoint          = each.value.rest_endpoint

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "schema_registry_cluster" {
    for_each = each.value.schema_registry_cluster != null ? [each.value.schema_registry_cluster] : []
    content {
      id = schema_registry_cluster.value.id
    }
  }
}

