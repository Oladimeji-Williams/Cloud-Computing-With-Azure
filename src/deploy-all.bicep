targetScope = 'resourceGroup'

@description('Azure region for all resources')
param location string = resourceGroup().location

@description('Windows admin username')
param adminUsername string = 'techstylers'

@secure()
@description('Windows admin password')
param adminPassword string

@description('Linux admin username')
param linuxAdminUsername string = 'techstylers'

@secure()
@description('Linux admin password')
param linuxAdminPassword string

@description('Windows VM name')
param vmName string = 'techstylersVM'

@description('Linux VM name')
param linuxVmName string = 'techstylersLinuxVM'

@description('Linux Public IP name')
param linuxPublicIpName string = 'techstylersLinuxPublicIP'

@description('Linux NIC name')
param linuxNicName string = 'techstylersLinuxNIC'

@description('VNet & network settings')
param vnetName string = 'techstylersVNet'
param subnetName string = 'web-subnet'
param publicIpName string = 'techstylersPublicIP'
param nicName string = 'techstylersNIC'
param nsgName string = 'techstylersNSG'

@description('Storage and Monitoring')
param storageAccountName string = 'techstylersdeepdeepdive6'
param skuName string = 'Standard_LRS'
param workspaceName string = 'TechstylersMonitor'

module vnetAndVm './resources.bicep' = {
  name: 'deployInfra'
  scope: resourceGroup()
  params: {
    location: location
    vnetName: vnetName
    subnetName: subnetName
    publicIpName: publicIpName
    nicName: nicName
    nsgName: nsgName
    vmName: vmName
    adminUsername: adminUsername
    adminPassword: adminPassword
    linuxVmName: linuxVmName
    linuxPublicIpName: linuxPublicIpName
    linuxNicName: linuxNicName
    linuxAdminUsername: linuxAdminUsername
    linuxAdminPassword: linuxAdminPassword
  }
}

module storage './storage.bicep' = {
  name: 'deployStorage'
  scope: resourceGroup()
  params: {
    storageAccountName: storageAccountName
    skuName: skuName
  }
}

module monitor './monitor.bicep' = {
  name: 'deployMonitor'
  scope: resourceGroup()
  params: {
    workspaceName: workspaceName
    location: location
  }
}
