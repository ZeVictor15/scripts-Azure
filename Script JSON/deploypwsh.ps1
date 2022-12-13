Connect-AzAccount

New-AzResourceGroup `
  -Name {name of your resource group} `
  -Location "{location}"

$templateFile = "{provide-the-path-to-the-template-file}"

New-AzResourceGroupDeployment `
    -Name blanktemplate `
    -ResourceGroupName myResourceGroup `
    -TemplateFile $templateFile