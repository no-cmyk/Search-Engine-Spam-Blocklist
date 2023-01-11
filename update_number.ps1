$ErrorActionPreference = "Inquire"
cd $home\Desktop\UTILITIES\blocklist
$count = 0
switch -File blocklist.txt {default{++$count}}
$readme = Get-Content README.md
$readme[0] = '<img src="https://img.shields.io/badge/Busted%20domains-' + $count + '-green">'
Set-Content -Path README.md -Value $readme