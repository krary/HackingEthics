Write-Host "Hello Lisandro Sarmiento Caballero"
$nombre = Read-Host "Escribe tu nombre" -AsSecureString
[string]$name = [System.Net.NetworkCredential]::new("",$nombre).Password
Write-Host "you password is..$name"
while($name -eq "lisandro"){
    $nombre = Read-Host "Escribe tu nombre" -AsSecureString
    $name = [System.Net.NetworkCredential]::new("",$nombre).Password
    Write-Host $name
}