resource "azurerm_linux_web_app" "azapp-container" {
  name                    = var.in_web_app_name
  location                = var.in_resource_group_location
  resource_group_name     = var.in_resource_group_name
  service_plan_id         = var.in_azappplan_id
  https_only              = true
  client_affinity_enabled = true

  identity {
    type = "SystemAssigned"
  }

  site_config {
    always_on = true

    application_stack {
      docker_image     = "${var.in_acr_login_server}/default"
      docker_image_tag = "latest"
      dotnet_version   = "6.0"
    }
  }

  app_settings = {
    DOCKER_REGISTRY_SERVER_PASSWORD = var.in_acr_admin_password
    DOCKER_REGISTRY_SERVER_URL      = var.in_acr_login_server
    DOCKER_REGISTRY_SERVER_USERNAME = var.in_acr_admin_username

    APPINSIGHTS_INSTRUMENTATIONKEY        = var.in_application_insights_instrumentation_key
    APPLICATIONINSIGHTS_CONNECTION_STRING = var.in_application_insights_connection_string
  }
}