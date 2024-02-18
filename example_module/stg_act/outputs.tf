output "stg_act_name_output" {
  value = resource.azurerm_storage_account.storage_account.name
  description = "The name of the storage account"
  
}