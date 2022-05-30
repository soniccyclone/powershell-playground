Import-Module "./euler_problems.psm1" -Verbose -Force

Write-Output "Euler's Problem 1: 1000"
Write-Output "Expected: 233168"
Write-Output "Actual: $(Get-EulerOne 1000)"