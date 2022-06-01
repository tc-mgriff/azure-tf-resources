

resource "azurerm_storage_account" "sa" {
  name                     = (var.name == null ? random_string.random.result : var.name)
  resource_group_name      = ""
  location                 = "eastus"
  ## account_kind             = var.account_kind
  account_tier             = "Standard"
  account_replication_type = "LRS"
  ## access_tier              = var.access_tier
  ## tags                     = var.tags
  allow_nested_items_to_be_public   = true
  enable_https_traffic_only         = false
  min_tls_version                   = TLS1_0
 
}
