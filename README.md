## Import resource group from module
`
terraform import module.resource_group.azurerm_resource_group.rg /subscriptions/a27228ad-9967-4903-9290-cc3f3540e5ed/resourceGroups/path-sdioum-test
`

## Import azure service bus namespace
`
terraform import module.service_bus_namespace.azurerm_servicebus_namespace.sb_namespace /subscriptions/a27228ad-9967-4903-9290-cc3f3540e5ed/resourceGroups/path-sdioum-test/providers/Microsoft.ServiceBus/namespaces/dioum2tech
`