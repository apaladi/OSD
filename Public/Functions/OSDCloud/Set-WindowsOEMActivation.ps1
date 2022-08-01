Function Set-WindowsOEMActivation {
    $ProductKey = (Get-CimInstance -ClassName SoftwareLicensingService).OA3xOriginalProductKey
    if ($ProductKey) {
        try {
            Write-Output "Setting Key: $ProductKey" 
            $service = get-wmiObject -query "select * from SoftwareLicensingService" | Out-Null
            if ($service){
                $service.InstallProductKey($ProductKey) | Out-Null
                $service.RefreshLicenseStatus() | Out-Null
                $service.RefreshLicenseStatus() | Out-Null
                Write-Output  "Successfully Applied Key"
            }
            else {
                Write-Output "Failed to connect to Service to Apply Key"
            }
        }
        catch {
            Write-Output "Failed try statement to Apply Key"
        }
    }
    else{
	    Write-Output 'Key not found!'
    }
}