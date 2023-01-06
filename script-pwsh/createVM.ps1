New-AzVm
       -ResourceGroupName 'resource group name'
       -Name 'machine name'
       -Credential 'credentials object'
       -Location 'location'
       -Image 'image name'

# New-AzVM -Name MyVm -ResourceGroupName ExerciseResources -Credential (Get-Credential) ...

# Você pode fornecer esses parâmetros diretamente para o cmdlet conforme mostrado acima. Como alternativa, você pode usar outros cmdlets para configurar a máquina virtual como Set-AzVMOperatingSystem, Set-AzVMSourceImage, Add-AzVMNetworkInterface e Set-AzVMOSDisk.