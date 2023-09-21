resource "azurerm_api_management" "apm" {
    name                = var.api_management_name
    resource_group_name = var.resource_group_name
    location            = var.location
    publisher_name      = "Corp Business Systems"
    publisher_email     = "duraimurugan_ravi@trimble.com"

    sku_name = "Developer_1"
  }

resource "azurerm_api_management_api" "apmapi" {
  name                = var.api_management_api_name
  resource_group_name = var.resource_group_name
  api_management_name = azurerm_api_management.apm.name
  revision            = "1"
  display_name        = "myapi"
  path                = "api"
  protocols           = ["http"]
}

resource "azurerm_api_management_api_operation" "apimop" {
  operation_id        = "invokeFunction"
  api_name            = azurerm_api_management_api.apmapi.name
  api_management_name = azurerm_api_management.apm.name
  resource_group_name = var.resource_group_name
  display_name        = "Invoke Function"
  method              = "GET"
  url_template        = var.url_template

  response {
    status_code = 200
  }
}