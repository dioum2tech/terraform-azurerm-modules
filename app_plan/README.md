## Terraform Plan with output file
`
terraform plan -out="main.tfplan"
`

## Terraform Apply with output file 
`
terraform apply .\main.tfplan
`

## Import Resource Group
`
terraform import azurerm_resource_group.rg /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/path-sdioum-test
`

## Terraform Import Service Bus namespace
`
terraform import azurerm_servicebus_namespace.sb_namespace /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/path-sdioum-test/providers/Microsoft.ServiceBus/namespaces/dioum2tech
`

## Import Service Bus Queue
`
terraform import azurerm_servicebus_queue.sb_queue /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/path-sdioum-test/providers/Microsoft.ServiceBus/namespaces/dioum2tech/queues/dioum2tech_queue
`

## Terraform Import Service Bus Topic
`
terraform import azurerm_servicebus_topic.sb_topic /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/path-sdioum-test/providers/Microsoft.ServiceBus/namespaces/dioum2tech/topics/dioum2tech_topic
`

## Remove resource on the state
`
terraform state rm azurerm_resource_group.rg
`

## Replace resoure group by the module in the state
`
terraform state mv azurerm_resource_group.rg module.resource_group.azurerm_resource_group.rg
`

## replace service bus namespace by module
`
terraform state mv azurerm_servicebus_namespace.sb_namespace module.service_bus_namespace.azurerm_servicebus_namespace.sb_namespace
`

## Replace service bus queue by module
`
terraform state mv azurerm_servicebus_queue.sb_queue module.service_bus_queue.azurerm_servicebus_queue.sb_queue
`

## Replace service bus queue2 by module
`
terraform state mv azurerm_servicebus_queue.sb_queue2 module.service_bus_queue_2.azurerm_servicebus_queue.sb_queue
`
OR

### Queue 1
`
terraform state mv module.service_bus_queue.azurerm_servicebus_queue.sb_queue 'module.service_bus_queue[\"dioum2tech_queue\"].azurerm_servicebus_queue.sb_queue'
`

### Queue 2
`
terraform state mv module.service_bus_queue_2.azurerm_servicebus_queue.sb_queue 'module.service_bus_queue[\"dioum2tech_queue2\"].azurerm_servicebus_queue.sb_queue'
`

## Replace service bus topic by module 
`
terraform state mv azurerm_servicebus_topic.sb_topic module.service_bus_topic.azurerm_servicebus_topic.sb_topic
`
