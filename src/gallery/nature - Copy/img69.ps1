Get-ChildItem -Path "D:\TECHNIKUM\ERASMUS\Erasmus-Finlandia-2025-strona\Erasmus-Finlandia-2025\src\gallery\nature" -Filter *.heic | ForEach-Object {
  $output = $_.FullName -replace ".heic$", ".jpg"
  Add-Type -AssemblyName System.Drawing
  $image = [System.Drawing.Image]::FromFile($_.FullName)
  $image.Save($output, [System.Drawing.Imaging.ImageFormat]::Jpeg)
  $image.Dispose()
}
