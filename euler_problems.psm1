Import-Module "./helpers.psm1" -Verbose -Force

function Get-EulerOne([int]$limit) {
    $n = 3
    $m = 5
    $nm = $n * $m

    $threes = Get-PartialSum $limit $n
    $fives = Get-PartialSum $limit $m
    $combined = Get-PartialSum $limit $nm

    $threes + $fives - $combined
}

Export-ModuleMember -Function *
