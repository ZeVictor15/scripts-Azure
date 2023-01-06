# Importe a chave de criptografia para o repositório do Microsoft Ubuntu. Essa chave permite que o gerenciador de pacotes verifique se o pacote do PowerShell que será instalado é fornecido pela Microsoft.

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Registre o repositório Microsoft Ubuntu para que o gerenciador de pacotes possa localizar o pacote do PowerShell.

sudo curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list

# Atualize a lista de pacotes.

sudo apt-get update

# Instale o PowerShell.

sudo apt-get install -y powershell

# Inicie o PowerShell para verificar se ele foi instalado com êxito.

pwsh