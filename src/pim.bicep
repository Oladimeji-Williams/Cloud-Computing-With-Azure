targetScope = 'resourceGroup'

@description('Object ID of the Entra ID group (CHARIS)')
param principalId string

@description('Built-in Contributor Role Definition ID')
var contributorRoleId = subscriptionResourceId(
  'Microsoft.Authorization/roleDefinitions',
  'b24988ac-6180-42a0-ab88-20f7382dd24c' // Contributor role
)

@description('Name for the role assignment (auto-generated using GUID)')
var roleAssignmentName = guid(resourceGroup().id, principalId, contributorRoleId)

resource contributorAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: roleAssignmentName
  properties: {
    principalId: principalId
    roleDefinitionId: contributorRoleId
    principalType: 'Group'  // Adjust if assigning to a user or service principal
  }
}
