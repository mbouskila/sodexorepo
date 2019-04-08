$AzureCred = Get-AutomationPSCredential -Name "SodexoASRefreshCred"
Add-AzureAnalysisServicesAccount -RolloutEnvironment 'northeurope.asazure.windows.net' -ServicePrincipal -Credential $AzureCred -TenantId "a289d6c2-3b1f-4bc4-8fa0-6866ff300052"

Invoke-ProcessASDatabase -server "asazure://northeurope.asazure.windows.net/azieas1zsx197" -DatabaseName "SodexoAS" -RefreshType Full -Verbose