param(
    [Parameter(Mandatory = $true)]
    [string]$SourcePath,

    [Parameter(Mandatory = $true)]
    [string]$OutputPath
)

if (-not (Test-Path -LiteralPath $SourcePath)) {
    throw "Source file not found: $SourcePath"
}

$lines = Get-Content -LiteralPath $SourcePath
$licenseLines = New-Object System.Collections.Generic.List[string]

foreach ($line in $lines) {
    if (-not $line.StartsWith('#')) {
        break
    }

    if ($line.Length -ge 2) {
        $licenseLines.Add($line.Substring(2))
    }
    else {
        $licenseLines.Add('')
    }
}

if ($licenseLines.Count -eq 0) {
    throw "No leading comment block found in $SourcePath"
}

$parent = Split-Path -Parent $OutputPath
if ($parent) {
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
}

$content = ($licenseLines -join "`n") + "`n"
$encoding = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($OutputPath, $content, $encoding)
