targetScope = 'subscription'

param rgName string
param location string
param storageAccountName string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: naman-rg-01
  location: location
}

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  scope: rg
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}