output "ssm_default_patch_baselines_id" {
  description = "Map of id values across all ssm_default_patch_baselines, keyed the same as var.ssm_default_patch_baselines"
  value       = { for k, v in aws_ssm_default_patch_baseline.ssm_default_patch_baselines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssm_default_patch_baselines_baseline_id" {
  description = "Map of baseline_id values across all ssm_default_patch_baselines, keyed the same as var.ssm_default_patch_baselines"
  value       = { for k, v in aws_ssm_default_patch_baseline.ssm_default_patch_baselines : k => v.baseline_id if v.baseline_id != null && length(v.baseline_id) > 0 }
}
output "ssm_default_patch_baselines_operating_system" {
  description = "Map of operating_system values across all ssm_default_patch_baselines, keyed the same as var.ssm_default_patch_baselines"
  value       = { for k, v in aws_ssm_default_patch_baseline.ssm_default_patch_baselines : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "ssm_default_patch_baselines_region" {
  description = "Map of region values across all ssm_default_patch_baselines, keyed the same as var.ssm_default_patch_baselines"
  value       = { for k, v in aws_ssm_default_patch_baseline.ssm_default_patch_baselines : k => v.region if v.region != null && length(v.region) > 0 }
}

