# Resourcegroup `Microsoft.Resources/resourceGroups]`

This module deploys a ResourceGroup.

## Navigation

- [Resource Types](#Resource-Types)
- [Usage examples](#Usage-examples)

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.Resources/resourceGroups` | [2022-09-01](https://learn.microsoft.com/en-us/azure/templates/microsoft.resources/2022-09-01/resourcegroups) |


## Usage examples

<details>

<summary>via Bicep module</summary>

```bicep
module ResourceGroup 'modules\ResourceGroup' = {
  name: 'rg-${uniqueString(deployment().name, location)}'
  params: {
    // Required parameters
    name: 'MyResourceGroup'
    location: 'westeurope'
  }
}
```

</details>