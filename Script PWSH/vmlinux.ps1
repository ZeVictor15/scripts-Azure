New-AzVm 
    -ResourceGroupName [sandbox resource group name] 
    -Name "testvm-eus-01" 
    -Credential (Get-Credential) 
    -Location "East US" -Image UbuntuLTS 
    -OpenPorts 22 
    -PublicIpAddressName "testvm-01"

# você poderá consultá-la e atribuir o objeto de VM a uma variável ($vm) 
    
$vm = (Get-AzVM -Name "testvm-eus-01" -ResourceGroupName [sandbox resource group name])

#  para ver as propriedades no objeto VMSize associado à seção HardwareProfile, execute o seguinte comando:

$vm.HardwareProfile

#  para obter informações sobre um dos discos, execute o seguinte comando:

$vm.StorageProfile.OsDisk

# execução do seguinte comando mostrará todos os tamanhos disponíveis para sua VM:

$vm | Get-AzVMSize

# execute o seguinte comando para obter o endereço IP público:

Get-AzPublicIpAddress -ResourceGroupName [sandbox resource group name] -Name "testvm-01"

# Com o endereço IP, você pode se conectar à VM com SSH

ssh name@publicIP 