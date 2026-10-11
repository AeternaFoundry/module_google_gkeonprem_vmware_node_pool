variable "gkeonprem_vmware_node_pools" {
  description = <<EOT
Map of gkeonprem_vmware_node_pools, attributes below
Required:
    - location
    - name
    - vmware_cluster
    - config (block):
        - boot_disk_size_gb (optional)
        - cpus (optional)
        - enable_load_balancer (optional)
        - image (optional)
        - image_type (required)
        - labels (optional)
        - memory_mb (optional)
        - replicas (optional)
        - taints (optional, block):
            - effect (optional)
            - key (required)
            - value (required)
        - vsphere_config (optional, block):
            - datastore (optional)
            - host_groups (optional)
            - tags (optional, block):
                - category (optional)
                - tag (optional)
Optional:
    - annotations
    - deletion_policy
    - display_name
    - on_prem_version
    - project
    - node_pool_autoscaling (block):
        - max_replicas (required)
        - min_replicas (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    vmware_cluster  = string
    annotations     = optional(map(string))
    deletion_policy = optional(string)
    display_name    = optional(string)
    on_prem_version = optional(string)
    project         = optional(string)
    config = object({
      boot_disk_size_gb    = optional(number)
      cpus                 = optional(number)
      enable_load_balancer = optional(bool)
      image                = optional(string)
      image_type           = string
      labels               = optional(map(string))
      memory_mb            = optional(number)
      replicas             = optional(number)
      taints = optional(list(object({
        effect = optional(string)
        key    = string
        value  = string
      })))
      vsphere_config = optional(object({
        datastore   = optional(string)
        host_groups = optional(list(string))
        tags = optional(list(object({
          category = optional(string)
          tag      = optional(string)
        })))
      }))
    })
    node_pool_autoscaling = optional(object({
      max_replicas = number
      min_replicas = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

