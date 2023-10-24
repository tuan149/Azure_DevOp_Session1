variable "prefix" {
  description = "Prefix"
  default = "tuantm22"
}

variable "resourceGroup" {
  description = "Name of resource"
  default     = "Azuredevops"
}

variable "location" {
  description = "Azure Region"
  default = "East US" 
}

variable "username"{
  default = "tuantm22"
}

variable "password"{
  default= "Password@123"
}

variable "packerImageId" {
  default = "/subscriptions/2fd8f952-d489-45bc-a39a-aeb5b6aff6d2/resourceGroups/Azuredevops/providers/Microsoft.Compute/images/myPackerImage"
}

variable "vmCount"{
  default = "2"
}