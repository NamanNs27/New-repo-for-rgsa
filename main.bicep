targetScope = 'subscription'

param location string = 'eastus'
param storageAccountName string
param resourceGroupName string = 'myRG'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  scope: rg
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}

}