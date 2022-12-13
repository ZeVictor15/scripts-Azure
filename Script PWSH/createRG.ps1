#Conectar 

Connect-AzAccount

# Trabalhar com assinaturas

# Altere a assinatura passando o nome da que deve ser selecionada.

Set-AzContext -Subscription '00000000-0000-0000-0000-000000000000'

# Obter uma lista de todos os grupos de recursos

Get-AzResourceGroup

# Para obter uma exibição mais concisa, você pode enviar a saída de Get-AzResourceGroup para o cmdlet Format-Table usando um pipe '|'.

Get-AzResourceGroup | Format-Table

# Criar um grupo de recursos

New-AzResourceGroup -Name 'name' -Location 'location'