# Azure Storage Security Lab
# Script: Create Storage Account

$ResourceGroupName = "<YOUR_RESOURCE_GROUP>"
$StorageAccountName = "<UNIQUE_STORAGE_ACCOUNT_NAME>"
$Location = "<AZURE_REGION>"

# Login to Azure
Connect-AzAccount

# Create Resource Group if it does not exist
if (-not (Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup `
        -Name $ResourceGroupName `
        -Location $Location
}

# Create Storage Account with security baseline
New-AzStorageAccount `
    -ResourceGroupName $ResourceGroupName `
    -Name $StorageAccountName `
    -Location $Location `
    -SkuName Standard_ZRS `
    -Kind StorageV2 `
    -MinimumTlsVersion TLS1_2 `
    -EnableHttpsTrafficOnly $true `
    -AllowBlobPublicAccess $false

Write-Host "Storage Account created successfully."
Write-Host "Name: $StorageAccountName"
