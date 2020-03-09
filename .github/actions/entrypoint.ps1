Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'

Write-Host "Github Workspace" $GITHUB_WORKSPACE
$TemplatePath = '/home/runner/work/Demo-WebApp-ISVs/Demo-WebApp-ISVs/'
$TestResults = Test-AzTemplate -TemplatePath $TemplatePath
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }

Write-Output $TestFailures