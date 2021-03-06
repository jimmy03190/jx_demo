module "jx" {
  source             = "github.com/jenkins-x/terraform-azurerm-jx"
  is_jx2             = false
  jx_git_url         = local.jx_git_url
  jx_bot_username    = local.jx_bot_username
  jx_bot_token       = var.jx_bot_token
}

output "cluster_name" {
  description = "jimmy_aks_cluster"
  value       = module.jx.cluster_name
}

output "cluster_resource_group" {
  description = "jimmy0924"
  value       = module.jx.cluster_resource_group
}

output "connect" {
  description = "Connect to cluster"
  value       = module.jx.connect
}
