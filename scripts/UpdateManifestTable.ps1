#!/usr/bin/env pwsh

<#
 _   _                       _          ___     __
| \ | | ___  _ __ __ _  __ _| |_ ___   / \ \   / /
|  \| |/ _ \| '__/ _` |/ _` | __/ _ \ / _ \ \ / /
| |\  | (_) | | | (_| | (_| | ||  __// ___ \ V /
|_| \_|\___/|_|  \__, |\__,_|\__\___/_/   \_\_/
                 |___/

MIT License

Copyright (c) 2023 Norgate AV Services Limited

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#>

[CmdletBinding()]

param (
    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string]
    $File = "README.md"
)

try {
    $content = [System.Collections.ArrayList]@((Get-Content -Path $File) -split '\n')

    $start = $content | Select-String -Pattern "<!-- MANIFEST-TABLE:START" | Select-Object -ExpandProperty LineNumber
    $end = $content | Select-String -Pattern "<!-- MANIFEST-TABLE:END" | Select-Object -ExpandProperty LineNumber

    if (!$start -or !$end) {
        Write-Error "Manifest table markers not found in $File"
        exit 1
    }

    $table = & $PSScriptRoot/GetTable.ps1

    $content.RemoveRange($start, ($end - $start) - 1)
    $content.Insert($start, "`n$table")

    $content | Set-Content -Path $File
} catch {
    Write-Error $_.Exception.Message
    exit 1
}

function Get-Table {
    [CmdletBinding()]

    $bucket = Resolve-Path -Path "$PSScriptRoot/../bucket"

    $foundation = "navfoundation-amx.json"

    $manifests = @()
    $manifests += Get-ChildItem "$bucket/$foundation"
    $manifests += Get-ChildItem "$bucket/*.json" | Where-Object { $_.Name -ne "$foundation" }

    foreach ($manifest in $manifests) {
        $content = Get-Content -Path $manifest.FullName -Raw | ConvertFrom-Json
        $table += "| [$($manifest.BaseName)]($($content.homepage)) | $($content.description) |`n"
    }

    $table = "| Package | Description |`n| ------- | ----------- |`n$table"

    return $table
}
