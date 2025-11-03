param location string = 'eastus'
param storageAccountName string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'myRG'
  location: location
}

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: naman_ns27crik
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}