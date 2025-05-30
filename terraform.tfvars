resource_group_name = "prod-vnet-rg"
location           = "eastus"
vnet_name          = "prod-vnet"
address_space      = ["10.0.0.0/16"]
dns_servers        = ["168.63.129.16"]  # Azure DNS

subnets = {
  app = {
    name           = "app-subnet"
    address_prefix = "10.0.1.0/24"
  },
  db = {
    name           = "db-subnet"
    address_prefix = "10.0.2.0/24"
  },
  web = {
    name           = "web-subnet"
    address_prefix = "10.0.3.0/24"
  }
}

tags = {
  Environment = "Production"
  ManagedBy   = "Terraform"
  Project     = "VNet-Infrastructure"
  Owner       = "DevOps"
} 