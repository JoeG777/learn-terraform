output "stg_act_name" {
  value = module.storage_account.stg_act_name_output
  description = "The name of the storage account"
  
}

output "rg_name" {
  value = module.ressource_group.rg_name_output
}