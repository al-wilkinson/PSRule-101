

param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'psrstora15'
  location: location
   sku: {
    name: 'Standard_LRS'
   }
   kind: 'StorageV2'
}
