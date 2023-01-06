Get-AzLocation | Select-Object -Property Location
$Location = 'eastus'

$ResourceGroup = 'MyResourceGroup'
New-AzResourceGroup -Name $ResourceGroup -Location $Location

$StorageHT = @{
    ResourceGroupName = $ResourceGroup
    Name              = 'mystorageaccount'
    SkuName           = 'Standard_LRS'
    Location          =  $Location
  }
  $StorageAccount = New-AzStorageAccount @StorageHT
  $Context = $StorageAccount.Context

$ContainerName = 'quickstartblobs'
New-AzStorageContainer -Name $ContainerName -Context $Context -Permission Blob