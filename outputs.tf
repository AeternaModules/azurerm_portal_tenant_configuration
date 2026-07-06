output "portal_tenant_configurations" {
  description = "All portal_tenant_configuration resources"
  value       = azurerm_portal_tenant_configuration.portal_tenant_configurations
}
output "portal_tenant_configurations_private_markdown_storage_enforced" {
  description = "List of private_markdown_storage_enforced values across all portal_tenant_configurations"
  value       = [for k, v in azurerm_portal_tenant_configuration.portal_tenant_configurations : v.private_markdown_storage_enforced]
}

