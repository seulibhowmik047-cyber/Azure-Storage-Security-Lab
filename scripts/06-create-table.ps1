# Azure Storage Security Lab
# Script: Create Table Storage Table
# Purpose: Creates an Azure Storage Table

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$TableName = "<YOUR_TABLE_NAME>"

# Login to Azure
Connect-AzAccount

# Get the Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

# Create Storage Context
$Context = $StorageAccount.Context

# Create Table
New-AzStorageTable `
    -Name $TableName `
    -Context $Context

Write-Host "Storage Table created successfully."
Write-Host "Table: $TableName"
