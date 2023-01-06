# Você pode obter uma lista de módulos carregados usando o comando 

Get-Module

# Instalar o módulo do Az PowerShell

Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

# Falha na execução do script

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Atualizar um módulo do PowerShell

Update-Module -Name Az

# Conectar

Connect-AzAccount