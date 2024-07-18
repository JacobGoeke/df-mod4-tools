# Creates a rainbow table file
$outputFile = "rainbowTable.txt"

# Open the file
$output = New-Object System.IO.StreamWriter $outputFile

# Create the SHA256 hash object
$sha256 = [System.Security.Cryptography.SHA256]::Create()

# Loop through all code variations
for ($i = 700000; $i -le 799999; $i++) {
    # Format the number as a six-digit string
    $code = $i.ToString("D6")

    # Compute the hash value of the current code
    $hash = [System.BitConverter]::ToString($sha256.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($code))).Replace("-", "").ToLower()

    # Write the code and hash to the output file
    $output.WriteLine("$code,$hash")
}

# Closes the text file
$output.Close()

Write-Output "Rainbow table generated and saved to $outputFile"