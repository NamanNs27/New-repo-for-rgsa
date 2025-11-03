param location string = 'eastus'
param storageAccountName string

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: namansharma9090218736874
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}