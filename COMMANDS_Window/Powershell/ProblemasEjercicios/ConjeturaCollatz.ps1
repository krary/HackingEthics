function Numero(){
    $num = Read-Host "Write a NUMBER..."
    $x = [int]$num
    $steps = 0
   while($x -gt 1){
    if($x % 2 -eq 0){
        $steps ++
        $x = $x / 2
        Write-Host "Valor: $x"
     }
     else{
        $steps++
        $x = $x * 3 + 1
        Write-Host "Valor: $x"
     }
   }
   Write-Host "Los pasos son el numero de : $steps"
}
Numero