# update_sitemap.ps1
$date = Get-Date -Format "yyyy-MM-ddTHH:mm:ssZ"
(Get-Content -path "sitemap.xml" -Raw) | ForEach-Object { $_ -replace '<lastmod>.*?</lastmod>', "<lastmod>$date</lastmod>" } | Set-Content -Path "sitemap.xml" -Encoding UTF8