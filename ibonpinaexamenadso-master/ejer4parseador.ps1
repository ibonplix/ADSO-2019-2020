$filepath = '.\users.csv'

# -delimiter "," 

Import-CSV $filepath | Foreach-Object{
New-ADUser -Name $_.firstname -GivenName $_.firstname -Surname $_.lastname -SamAccountName $_.username -UserPrincipalName $_.email -Path $_.ou -AccountPassword(ConvertTo-SecureString $_.password -AsPlainText -Force) -Enabled $true

}
