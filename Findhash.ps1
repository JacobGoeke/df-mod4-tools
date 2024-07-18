# This file will find a hash in our recently created rainbow table
$erikHash = "9e89895d350e5fdac013006b2acb067f8516149cdf7e952b021ff0326718ab70"
$loganHash = "af95a5393589cace29a63eead5328f1647a8bc62b5ef18b023c574484a877ced"
$codyHash = "30fc150e7c8b42dd86b1bb6e67ee256be8230969bb37cc111749e87af383ae82"

$rainbowTable = Get-Content -Path rainbowtable\rainbowtable.txt

$foundCOde = $null


# Finding Erik's code
foreach ($entry in $rainbowTable) {
    # Split the entry into code and hash parts
    $parts = $entry -split ","
    $code = $parts[0]
    $hash = $parts[1]

    # Check if the hash matches the target hash
    if ($hash -eq $erikHash) {
        $foundCode = $code
        break
    }
}

# Output the result
if ($foundCode) {
    Write-Output "Code corresponding to Erik's hash is: $foundCode"
} else {
    Write-Output "Hash not found in the rainbow table."
}

# Finding Logan's code
foreach ($entry in $rainbowTable) {
    # Split the entry into code and hash parts
    $parts = $entry -split ","
    $code = $parts[0]
    $hash = $parts[1]

    # Check if the hash matches the target hash
    if ($hash -eq $loganHash) {
        $foundCode = $code
        break
    }
}

# Output the result
if ($foundCode) {
    Write-Output "Code corresponding to Logan's hash is: $foundCode"
} else {
    Write-Output "Hash not found in the rainbow table."
}

# Finding Cody's code
foreach ($entry in $rainbowTable) {
    # Split the entry into code and hash parts
    $parts = $entry -split ","
    $code = $parts[0]
    $hash = $parts[1]

    # Check if the hash matches the target hash
    if ($hash -eq $codyHash) {
        $foundCode = $code
        break
    }
}

# Output the result
if ($foundCode) {
    Write-Output "Code corresponding to Cody's hash is: $foundCode"
} else {
    Write-Output "Hash not found in the rainbow table."
}
