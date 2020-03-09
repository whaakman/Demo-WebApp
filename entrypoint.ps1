Import-Module '/arm-ttk/arm-ttk/arm-ttk.psd1'

# path where checkout clones our repo to

$TestResults = Test-AzTemplate -TemplatePath /home/runner/work/Demo-WebApp-ISVs/Demo-WebApp-ISVs
$TestFailures =  $TestResults | Where-Object { -not $_.Passed }

Write-Output $TestFailures