data "oci_core_capture_filters" "core_capture_filters_lookup" {
  for_each = var.core_capture_filters_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  filter_type    = each.value.filter_type
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

