$i = 1
Get-ChildItem -File | ForEach-Object {
    $ext = $_.Extension
    Rename-Item $_ -NewName ("img{0}{1}" -f $i, $ext)
    $i++
}
