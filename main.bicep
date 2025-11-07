targetScope = 'subscription'

param rgName string
param location string
param storageAccountName string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

module storage './storage.bicep' = {
  name: 'deployStorage'
  scope: resourceGroup(rgName)
  dependsOn: [
    rg
  ]
  params: {
    location: location
    storageAccountName: storageAccountName
  }
}