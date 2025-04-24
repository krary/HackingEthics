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
function objeto(){
    $pro = [System.Diagnostics.Process]::GetProcesses()
    $pro | Where-Object{$_.MainModule -and $_.MainWindowTitle -like "*notepad*"}
}
function Notas(){
    $note = [System.Diagnostics.Process]::new()
    $note.StartInfo.FileName = "notepad.exe"
    $note.StartInfo.WindowStyle = [System.Diagnostics.ProcessWindowStyle]::Hidden
    $note.Start()
}
function investigate(){
    $variable = [System.Diagnostics.Process]::GetProcesses()
    foreach($x in $variable){
        $l = $x.MainWindowHandle
        if($l -eq 0){
            Write-Host "Proceso encontrado: $($x.ProcessName) File $($x.MainModule.FileName)"
        }
    }

}
investigate