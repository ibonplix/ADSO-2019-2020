help Get-Content | out-file -filepath c:\Users\$env:UserName\Documents\GetContent.txt
get-content -path c:\Users\$env:UserName\Documents\GetContent.txt
Get-Command -Module NetAdapter | Format-Wide -Property Noun -Column 4
Get-ChildItem -path C:\Windows\System32 -recurse -filter '*.exe' | Format-List -Property Name
Get-Date
clear