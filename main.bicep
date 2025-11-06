targetScope = 'subscription'

param location string = 'eastus'
param storageAccountName string
param resourceGroupName string = 'myRG'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

module storageModule './storage.bicep' = {
  name: 'storageDeployment'
  scope: rg
  params: {
    location: location
    storageAccountName: storageAccountName
  }
}