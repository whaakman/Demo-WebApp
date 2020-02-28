# Create Resource Group
$rgName = "rg-demoappisv"
$location = "westeurope"
new-azresourcegroup -name $rgName -location $location

New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile .\webapp-sql.json -TemplateParameterFile .\webapp-sql.parameters.json -verbose