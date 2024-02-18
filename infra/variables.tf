
variable "location" {
  description = "The location/region where the infrastructure will be deployed"
  type = string
  
}

variable "rsgname" {
    type = string
    description = "The name of the resource group"

}

variable "stgactname" {
    type = string
    description = "The name of the storage account"
  
}