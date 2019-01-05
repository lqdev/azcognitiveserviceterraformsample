# Configure Azure Provider
provider "azurerm" {
  version="=1.20.0"
}

# Create Resource Group
resource "azurerm_resource_group" "terraform_cognitive_sample" {
  name="terraform_cognitive_sample"
  location="East US"
}

# Create Cognitive Service
resource "azurerm_cognitive_account" "computer_vision_service" {
  name="computer_vision_service"
  resource_group_name="${azurerm_resource_group.terraform_cognitive_sample.name}"
  location="${azurerm_resource_group.terraform_cognitive_sample.location}"
  kind="ComputerVision"
  
  sku {
      name="F0"
      tier="Free"
  }
}

# Output Cognitive Services Endpoint
output "computer_vision_endpoint" {
    value="${azurerm_cognitive_account.computer_vision_service.endpoint}"
}