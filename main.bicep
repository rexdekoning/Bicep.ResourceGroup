metadata name = 'ResourceGroup'
metadata description = 'This module deploys a Resource Group.'

@description('Required. Name of the Resourcegroup')
param name string

@description('Required. Location for all resources.')
param location string

@description('Optional. Tags of the resource.')
param tags object?

// =========== main.bicep ===========

// Setting target scope
targetScope = 'subscription'

// Creating resource group
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: name
  location: location
  tags: tags
}
