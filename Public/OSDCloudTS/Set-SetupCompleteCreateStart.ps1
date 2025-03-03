function Set-SetupCompleteCreateStart {
    
    $ScriptsPath = "C:\Windows\Setup\scripts"

    if (!(Test-Path -Path $ScriptsPath)){New-Item -Path $ScriptsPath} 

    $RunScript = @(@{ Script = "SetupComplete"; BatFile = 'SetupComplete.cmd'; ps1file = 'SetupComplete.ps1';Type = 'Setup'; Path = "$ScriptsPath"})


    Write-Output "Creating $($RunScript.Script) Files"

    $BatFilePath = "$($RunScript.Path)\$($RunScript.batFile)"
    $PSFilePath = "$($RunScript.Path)\$($RunScript.ps1File)"
            
    #Create Batch File to Call PowerShell File
            
    New-Item -Path $BatFilePath -ItemType File -Force
    $CustomActionContent = New-Object system.text.stringbuilder
    [void]$CustomActionContent.Append('%windir%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy ByPass -File')
    [void]$CustomActionContent.Append(" $PSFilePath")
    Add-Content -Path $BatFilePath -Value $CustomActionContent.ToString()

    #Create PowerShell File to do actions
            
    New-Item -Path $PSFilePath -ItemType File -Force
    Add-Content -path $PSFilePath "Write-Output 'Starting SetupComplete Script Process'"
    Add-Content -path $PSFilePath "Set-ExecutionPolicy RemoteSigned -Force -Scope CurrentUser"
    Add-Content -path $PSFilePath '$ModulePath = (Get-ChildItem -Path "$($Env:ProgramFiles)\WindowsPowerShell\Modules\osd" | Where-Object {$_.Attributes -match "Directory"} | select -Last 1).fullname'
    Add-Content -path $PSFilePath 'import-module "$ModulePath/OSD.psd1" -Force'
    Add-Content -path $PSFilePath "Invoke-Expression (Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/OSDeploy/OSD/master/cloud/modules/_anywhere.psm1')"
    Add-Content -path $PSFilePath "Invoke-Expression (Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/OSDeploy/OSD/master/cloud/modules/_winpe.psm1')"
    Add-Content -Path $PSFilePath "Start-Sleep -Seconds 10"
    Add-Content -Path $PSFilePath "Start-Transcript -Path 'C:\OSDCloud\Logs\SetupComplete.log' -ErrorAction Ignore"
    #Add-Content -Path $PSFilePath "Stop-Transcript"
    #Add-Content -Path $PSFilePath "Restart-Computer -Force"

}