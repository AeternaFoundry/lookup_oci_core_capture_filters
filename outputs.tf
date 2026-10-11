output "core_capture_filters_lookup_id" {
  description = "Map of id values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_capture_filters_lookup_capture_filters" {
  description = "Map of capture_filters values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no capture_filters are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.capture_filters if v.capture_filters != null && length(v.capture_filters) > 0 }
}
output "core_capture_filters_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_capture_filters_lookup_display_name" {
  description = "Map of display_name values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_capture_filters_lookup_filter" {
  description = "Map of filter values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_capture_filters_lookup_filter_type" {
  description = "Map of filter_type values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no filter_type are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.filter_type if v.filter_type != null && length(v.filter_type) > 0 }
}
output "core_capture_filters_lookup_state" {
  description = "Map of state values across all core_capture_filters_lookup, keyed the same as var.core_capture_filters_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_core_capture_filters.core_capture_filters_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

