function time(){
    <#This is a comment that we alaways can make it into the program without put another 
    staff expecting affect the program in certain way#>
    [string]$word = "Albert is my fucking name so i supose that you didnt knew that--"
    $letra=''
    [int]$num = 0
    for($x = 0;$x -lt $word.Length;$x++){
        $begin = Get-Date
        $num++;
        $letra = $word[$x]
        #Start-Sleep -Seconds 1
        Start-Sleep  -Milliseconds 100
        Write-Host $letra -NoNewline
    }
    if($num -ge $word.Lenght){
        $end = Get-Date
        Write-Host ""
        Write-Host $begin - $end
    }
}


