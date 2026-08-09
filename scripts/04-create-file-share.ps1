# Azure Storage Security Lab
# Script: Create Azure File Share
# Purpose: Creates an Azure File Share

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$FileShareName = "<YOUR_FILE_SHARE_NAME>"
$QuotaGiB = 100

# Login to Azure
Connect-AzAccount

# Get the Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

# Create Storage Context
$Context = $StorageAccount.Context

# Create Azure File Share
New-AzStorageShare `
    -Name $FileShareName `
    -Context $Context `
    -QuotaGiB $QuotaGiB

Write-Host "Azure File Share created successfully."
Write-Host "File Share: $FileShareName"
Write-Host "Quota: $QuotaGiB GiB"
