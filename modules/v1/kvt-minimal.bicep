@description('Specifies the location for resources.')
param location string = resourceGroup().location

param tenantId string = subscription().tenantId

param skuName string = 'standard'


resource kv 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: 'tempkvt2145215'
  location: location
  properties: {
    tenantId: tenantId
    sku: {
      name: skuName
      family: 'A'
    }
  }
}
