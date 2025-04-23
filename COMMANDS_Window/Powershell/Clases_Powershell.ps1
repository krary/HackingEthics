class Ficha{
    [string] $name
    [int] $age
    Ficha([string] $name,[int]$age){
        $this.name = $name
        $this.age = $age
        
    }
    [void]setter(){
        Write-Host "Hola $($this.name) tienes $($this.age) de edad"
    }
}
$ficha1 = [Ficha]::new("lisandro",34)
#$ficha1.setter()
#FILTRO DE EL HABITACULO
class Tiempo{
   [string]$respuesta
   Tiempo([string]$respuesta){
    $this.respuesta = $respuesta
   }
   [void]imprimir(){
      $this.respuesta = Read-Host "Quieres imprimir la hora y fecha"
      if($this.respuesta -eq "s"){
        $t = [System.DateTime]::Now
        Write-Host $t
      }
   }
}

$tt = New-Object Tiempo("s")
$tt.imprimir