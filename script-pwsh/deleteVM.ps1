$vm = (Get-AzVM -Name "testvm-eus-01" -ResourceGroupName [sandbox resource group name])

# Para testar mais alguns comandos, excluiremos a VM. Primeiro desligaremos a VM:

Stop-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName

# vamos excluí-la executando o cmdlet Remove-AzVM

Remove-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName

# O comando Remove-AzVMapenas exclui a VM. Ele não limpa nenhum outro recurso Neste ponto, bastaria apenas excluir o grupo de recursos e pronto o entanto, vamos executar as etapas de limpeza manual como um exercício. Você deverá observar um padrão nos comandos.

$vm | Remove-AzNetworkInterface –Force

Get-AzDisk -ResourceGroupName $vm.ResourceGroupName -DiskName $vm.StorageProfile.OSDisk.Name | Remove-AzDisk -Force

Get-AzVirtualNetwork -ResourceGroupName $vm.ResourceGroupName | Remove-AzVirtualNetwork -Force

Get-AzNetworkSecurityGroup -ResourceGroupName $vm.ResourceGroupName | Remove-AzNetworkSecurityGroup -Force

Get-AzPublicIpAddress -ResourceGroupName $vm.ResourceGroupName | Remove-AzPublicIpAddress -Force