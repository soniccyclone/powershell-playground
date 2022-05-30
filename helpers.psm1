function Get-Primality([int]$num) {
    Confirm-Prime %$num 2
}

function Get-PartialSum([int]$n, [int]$scale) {
    $limit = ($n - 1) / $scale
    ($limit + 1) * $limit * $scale / 2
}

function Write-Welcome ([int]$problem_number) {
    Write-Output "Solving Euler problem ${problem_number}"
}

function Confirm-Prime ([int]$num, [int]$factor) {
	$square_root = [math]::Sqrt($num)
	switch($factor) {
        ($_ -gt $square_root) { return true }
        (($num % $_) -eq 0) { return false}
        default {
            Confirm-Prime $num ($factor + 1)
        }
    }
}

Export-ModuleMember -Function *
