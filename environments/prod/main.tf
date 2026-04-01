module "storage" {
  source              = "../../modules/storage_account"
  name                = "stkaaradevopsprod001" # must be globally unique
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source = "../../modules/acr"
  name   = "crkaaradevopsprod001"
  # must be globally unique
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "container_apps" {
  source              = "../../modules/container_apps"
  prefix              = "kaara-devops-prod-si"
  resource_group_name = var.resource_group_name
  location            = var.location
}