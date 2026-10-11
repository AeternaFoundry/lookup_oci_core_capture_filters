variable "core_capture_filters_lookup" {
  description = <<EOT
Map of core_capture_filters_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - filter_type
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    filter_type    = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

