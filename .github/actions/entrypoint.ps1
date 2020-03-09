Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'

$TemplatePath = '/temp/'
$TestResults = Test-AzTemplate -TemplatePath $TemplatePath
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }

Write-Output $TestFailures