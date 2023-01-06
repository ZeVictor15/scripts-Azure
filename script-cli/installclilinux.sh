# Modifique sua lista de fontes para que o repositório da Microsoft seja registrado e o gerenciador de pacotes possa localizar o pacote da CLI do Azure.

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list

#Importe a chave de criptografia para o repositório do Microsoft Ubuntu. Isso permitirá que o gerenciador de pacotes verifique se o pacote da CLI do Azure que você instalar vem da Microsoft.

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Instale a CLI do Azure.

sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install azure-cli

# Executar a CLI do Azure

az --version