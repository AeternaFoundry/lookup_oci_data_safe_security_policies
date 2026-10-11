variable "data_safe_security_policies_lookup" {
  description = <<EOT
Map of data_safe_security_policies_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - display_name
    - security_policy_id
    - security_policy_type
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    access_level              = optional(string)
    compartment_id_in_subtree = optional(bool)
    display_name              = optional(string)
    security_policy_id        = optional(string)
    security_policy_type      = optional(string)
    state                     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

