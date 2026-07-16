output "portal_tenant_configurations_id" {
  description = "Map of id values across all portal_tenant_configurations, keyed the same as var.portal_tenant_configurations"
  value       = { for k, v in azurerm_portal_tenant_configuration.portal_tenant_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "portal_tenant_configurations_private_markdown_storage_enforced" {
  description = "Map of private_markdown_storage_enforced values across all portal_tenant_configurations, keyed the same as var.portal_tenant_configurations"
  value       = { for k, v in azurerm_portal_tenant_configuration.portal_tenant_configurations : k => v.private_markdown_storage_enforced if v.private_markdown_storage_enforced != null }
}

