# Azure Storage Security Lab
# Script: Upload Blob
# Purpose: Uploads a local file to a private Blob Storage container

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$ContainerName = "<YOUR_CONTAINER_NAME>"
$LocalFilePath = "<PATH_TO_LOCAL_FILE>"

# Login to Azure
Connect-AzAccount

# Get the Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

# Create Storage Context
$Context = $StorageAccount.Context

# Upload file to Blob Storage
Set-AzStorageBlobContent `
    -File $LocalFilePath `
    -Container $ContainerName `
    -Context $Context `
    -Force

Write-Host "Blob uploaded successfully."
Write-Host "Container: $ContainerName"
