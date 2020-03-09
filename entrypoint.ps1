Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'
Test-AzTemplate -TemplatePath /temp/

$TestResults = Test-AzTemplate -TemplatePath /temp/
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }

Write-Host $TestFailures