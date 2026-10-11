resource "google_gkeonprem_vmware_node_pool" "gkeonprem_vmware_node_pools" {
  for_each = var.gkeonprem_vmware_node_pools

  location        = each.value.location
  name            = each.value.name
  vmware_cluster  = each.value.vmware_cluster
  annotations     = each.value.annotations
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  on_prem_version = each.value.on_prem_version
  project         = each.value.project

  config {
    boot_disk_size_gb    = each.value.config.boot_disk_size_gb
    cpus                 = each.value.config.cpus
    enable_load_balancer = each.value.config.enable_load_balancer
    image                = each.value.config.image
    image_type           = each.value.config.image_type
    labels               = each.value.config.labels
    memory_mb            = each.value.config.memory_mb
    replicas             = each.value.config.replicas
    dynamic "taints" {
      for_each = each.value.config.taints != null ? each.value.config.taints : []
      content {
        effect = taints.value.effect
        key    = taints.value.key
        value  = taints.value.value
      }
    }
    dynamic "vsphere_config" {
      for_each = each.value.config.vsphere_config != null ? [each.value.config.vsphere_config] : []
      content {
        datastore   = vsphere_config.value.datastore
        host_groups = vsphere_config.value.host_groups
        dynamic "tags" {
          for_each = vsphere_config.value.tags != null ? vsphere_config.value.tags : []
          content {
            category = tags.value.category
            tag      = tags.value.tag
          }
        }
      }
    }
  }

  dynamic "node_pool_autoscaling" {
    for_each = each.value.node_pool_autoscaling != null ? [each.value.node_pool_autoscaling] : []
    content {
      max_replicas = node_pool_autoscaling.value.max_replicas
      min_replicas = node_pool_autoscaling.value.min_replicas
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

