#ESTO ES UN COMENTARIO EN POWERSHELL
function usless(){
    Write-Host "Hello from Visual Studio Code"
#NUMBERS
$name = "Neo"
$number = 399
Write-Host "Your Name is $name and this is the number that you wrote $number"
#operadores basicos
#-gt (mayor que <)
#-lt (menor que >)
#-ge (mayor he igual que..)
#-le (menor he igual que..)
$name = Read-Host "¿Como te llamas .."
#DECLARACION DE FUNCIONES EN EL POWERSHELL

}
function My_function(){
    if($name -eq "lisandro"){
        Write-Host "Wolcome Administrator.."
    }
    else{
        Write-Host "Woclome but you are not the admin..."
    }
}
function bucles {
    $name = Read-Host "Write your name"

    # Bucle se ejecuta mientras el nombre sea "lisandro"
    while ($name -eq "lisandro") {
        # Solicitar la contraseña de manera segura
        $password = Read-Host "Write Your password..." -AsSecureString
        
        # Convertir SecureString a texto
        $security = [System.Net.NetworkCredential]::new("", $password).Password
        
        # Contraseña correcta
        $x = "1234"  # Usamos una cadena para comparar

        # Comprobar si la contraseña es incorrecta
        if ($security -ne $x) {
            Write-Host "Password incorrect!"
            $name = Read-Host "Try again... Write your name"
        } else {
            Write-Host "Correct password!"
            break  # Salir del bucle si la contraseña es correcta
        }
    }
}
#USANDO CLASES .NET 
function Hora(){
    $time = [System.DateTime]::now
    Write-Host $time
}
