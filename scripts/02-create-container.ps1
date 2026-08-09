# Azure Storage Security Lab
# Script: Create Blob Container
# Purpose: Creates a private Blob Storage container

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$ContainerName = "<YOUR_CONTAINER_NAME>"

# Login to Azure
Connect-AzAccount

# Get the Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

# Create Storage Context
$Context = $StorageAccount.Context

# Create a private Blob Container
New-AzStorageContainer `
    -Name $ContainerName `
    -Context $Context `
    -Permission Off

Write-Host "Blob container created successfully."
Write-Host "Container: $ContainerName"
