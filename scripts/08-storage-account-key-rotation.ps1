# Azure Storage Security Lab
# Script: Storage Account Key Rotation
# Purpose: Rotates a Storage Account access key
#
# IMPORTANT:
# Rotate keys only after confirming that applications
# are not dependent on the key being rotated.

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<YOUR_STORAGE_ACCOUNT_NAME>"
$KeyName = "key1"

# Login to Azure
Connect-AzAccount

Write-Host "Checking Storage Account..."

# Verify that the Storage Account exists
$StorageAccount = Get-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName

if (-not $StorageAccount) {
    Write-Error "Storage Account was not found."
    exit
}

Write-Host "Storage Account found: $StorageAccountName"

Write-Host ""
Write-Host "WARNING:"
Write-Host "Rotating $KeyName can break applications that use this key."
Write-Host "Make sure dependent applications are updated before rotation."
Write-Host ""

# Rotate the selected key
New-AzStorageAccountKey `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName `
    -KeyName $KeyName

Write-Host ""
Write-Host "$KeyName rotation completed successfully."
Write-Host "Update dependent applications if they use the rotated key."
