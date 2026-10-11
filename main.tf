data "oci_data_safe_security_policies" "data_safe_security_policies_lookup" {
  for_each = var.data_safe_security_policies_lookup

  compartment_id            = each.value.compartment_id
  access_level              = each.value.access_level
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  display_name              = each.value.display_name
  security_policy_id        = each.value.security_policy_id
  security_policy_type      = each.value.security_policy_type
  state                     = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

