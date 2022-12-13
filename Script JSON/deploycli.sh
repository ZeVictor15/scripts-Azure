az login

az group create \
  --name {name of your resource group} \
  --location "{location}"

templateFile="{provide-the-path-to-the-template-file}"

az deployment group create \
  --name blanktemplate \
  --resource-group myResourceGroup \
  --template-file $templateFile