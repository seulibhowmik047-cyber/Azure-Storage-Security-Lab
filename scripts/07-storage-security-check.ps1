# Azure Storage Security Lab
# Script: Storage Security Check
# Purpose: Checks important security settings of an Azure Storage Account

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"

# Login to Azure
Connect-AzAccount

# Get Storage Account
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

Write-Host "=========================================="
Write-Host " Azure Storage Security Check"
Write-Host "=========================================="

Write-Host ""
Write-Host "Storage Account: $($StorageAccount.StorageAccountName)"

Write-Host ""
Write-Host "HTTPS Only:"
$StorageAccount.EnableHttpsTrafficOnly

Write-Host ""
Write-Host "Minimum TLS Version:"
$StorageAccount.MinimumTlsVersion

Write-Host ""
Write-Host "Public Blob Access:"
$StorageAccount.AllowBlobPublicAccess

Write-Host ""
Write-Host "Public Network Access:"
$StorageAccount.PublicNetworkAccess

Write-Host ""
Write-Host "SKU:"
$StorageAccount.Sku.Name

Write-Host ""
Write-Host "Kind:"
$StorageAccount.Kind

Write-Host ""
Write-Host "Security check completed."
