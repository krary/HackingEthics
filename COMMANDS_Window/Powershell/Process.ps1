function pro(){
    $lista_procesos  = [System.Diagnostics.Process]::GetProcesses()
    foreach($i in $lista_procesos){
       $nombre =  $i.ProcessName
       $cpu =  $i.TotalProcessorTime.TotalSeconds
       $id =  $i.Id
       $visible =  $i.MainWindowTitle
       $file_path =  $i.MainModule.FileName
       $sospecha = $false
       if($file_path -notmatch "C:\\Window|C:\\Program File|C:\\Users"){
        $sospecha = $true
       }
       if($cpu -gt 30){
        $sospecha = $true
       }
       if($visible -eq "" -and $file_path -notmatch "Window"){
        $sospecha = $true
       }
       if($sospecha){
        Write-Host "SOSPECHOSO Nombre: $nombre Titulo: $visible Path: $file_path"
       }
    }
}
pro