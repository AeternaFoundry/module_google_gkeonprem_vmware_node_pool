output "gkeonprem_vmware_node_pools_id" {
  description = "Map of id values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no id are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gkeonprem_vmware_node_pools_annotations" {
  description = "Map of annotations values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no annotations are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "gkeonprem_vmware_node_pools_config" {
  description = "Map of config values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no config are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => one(v.config) if v.config != null && length(v.config) > 0 }
}
output "gkeonprem_vmware_node_pools_create_time" {
  description = "Map of create_time values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no create_time are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "gkeonprem_vmware_node_pools_delete_time" {
  description = "Map of delete_time values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no delete_time are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "gkeonprem_vmware_node_pools_deletion_policy" {
  description = "Map of deletion_policy values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "gkeonprem_vmware_node_pools_display_name" {
  description = "Map of display_name values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no display_name are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "gkeonprem_vmware_node_pools_effective_annotations" {
  description = "Map of effective_annotations values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no effective_annotations are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "gkeonprem_vmware_node_pools_etag" {
  description = "Map of etag values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no etag are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "gkeonprem_vmware_node_pools_location" {
  description = "Map of location values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no location are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "gkeonprem_vmware_node_pools_name" {
  description = "Map of name values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no name are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gkeonprem_vmware_node_pools_node_pool_autoscaling" {
  description = "Map of node_pool_autoscaling values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no node_pool_autoscaling are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => one(v.node_pool_autoscaling) if v.node_pool_autoscaling != null && length(v.node_pool_autoscaling) > 0 }
}
output "gkeonprem_vmware_node_pools_on_prem_version" {
  description = "Map of on_prem_version values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no on_prem_version are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.on_prem_version if v.on_prem_version != null && length(v.on_prem_version) > 0 }
}
output "gkeonprem_vmware_node_pools_project" {
  description = "Map of project values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no project are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.project if v.project != null && length(v.project) > 0 }
}
output "gkeonprem_vmware_node_pools_reconciling" {
  description = "Map of reconciling values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no reconciling are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.reconciling if v.reconciling != null }
}
output "gkeonprem_vmware_node_pools_state" {
  description = "Map of state values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no state are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "gkeonprem_vmware_node_pools_status" {
  description = "Map of status values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no status are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.status if v.status != null && length(v.status) > 0 }
}
output "gkeonprem_vmware_node_pools_uid" {
  description = "Map of uid values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no uid are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "gkeonprem_vmware_node_pools_update_time" {
  description = "Map of update_time values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no update_time are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "gkeonprem_vmware_node_pools_vmware_cluster" {
  description = "Map of vmware_cluster values across all gkeonprem_vmware_node_pools, keyed the same as var.gkeonprem_vmware_node_pools except keys with no vmware_cluster are omitted"
  value       = { for k, v in google_gkeonprem_vmware_node_pool.gkeonprem_vmware_node_pools : k => v.vmware_cluster if v.vmware_cluster != null && length(v.vmware_cluster) > 0 }
}

