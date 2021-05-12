# Web App Deployment slots demo
Demo leveraging the Microsoft tutorial "Build an ASP.NET Core and SQL Database app in Azure App Service" as documented here: https://docs.microsoft.com/en-us/azure/app-service/app-service-web-tutorial-dotnetcore-sqldb. Added images to the header of the page to point out the different deployments on different slots.

Deploys an ARM Template with the following resources:
- App Service Plan
- App Service (connected to Azure SQL)
- Staging slot (SQLite)
- Azure SQL
- App Insights

Can be used to demo App Insights, swapping slots and the effect of Deployment slot settings

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwhaakman%2FDemo-WebApp%2Fmaster%2Fazuredeploy.json)