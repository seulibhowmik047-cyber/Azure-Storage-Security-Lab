# Azure Storage Security Lab
# Script: Create Queue Storage Queue
# Purpose: Creates an Azure Storage Queue

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$QueueName = "<YOUR_QUEUE_NAME>"

# Login to Azure
Connect-AzAccount

# Get the Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

# Create Storage Context
$Context = $StorageAccount.Context

# Create Queue
New-AzStorageQueue `
    -Name $QueueName `
    -Context $Context

Write-Host "Storage Queue created successfully."
Write-Host "Queue: $QueueName"
