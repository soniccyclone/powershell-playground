function Get-EulerOne([int]$limit) {
    $sum = 0

    for ($i = 0; $i -lt $limit; $i++) {
        if ((($i % 3) -eq 0) -or (($i % 5) -eq 0)) {
            $sum += $i
        }
    }
    
    return $sum
}

Export-ModuleMember -Function *
