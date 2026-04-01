resource "azurerm_log_analytics_workspace" "this" {
  name = "law-${var.prefix}-001"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

resource "azurerm_container_app_environment" "this" {
  name = "cae-${var.prefix}-001"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.this.id
}

resource "azurerm_container_app" "this" {
  name = "app-${var.prefix}-001"
  resource_group_name          = var.resource_group_name
  container_app_environment_id = azurerm_container_app_environment.this.id
  revision_mode                = "Single"

  template {
    container {
      name   = "app"
      image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      cpu    = 0.5
      memory = "1Gi"
    }
  }

ingress {
  external_enabled = true
  target_port      = 80

  traffic_weight {
    percentage      = 100
    latest_revision = true
  }
}
}