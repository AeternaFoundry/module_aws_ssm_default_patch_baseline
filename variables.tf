variable "ssm_default_patch_baselines" {
  description = <<EOT
Map of ssm_default_patch_baselines, attributes below
Required:
    - baseline_id
    - operating_system
Optional:
    - region
EOT

  type = map(object({
    baseline_id      = string
    operating_system = string
    region           = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

