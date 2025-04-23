function pro(){
    $lista_procesos  = [System.Diagnostics.Process]::GetProcesses()
    foreach($i in $lista_procesos){
       $nombre =  $i.ProcessName
       $cpu =  $i.TotalProcessorTime.TotalSeconds
       $id =  $i.Id
       $visible =  $i.MainWindowTitle
       $file_path =  $i.MainModule.FileName
       
    }
}
pro