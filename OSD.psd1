#
# Module manifest for module 'OSD'
#

@{
    RootModule              = 'OSD.psm1'
    ModuleVersion           = '22.10.21.1'
    CompatiblePSEditions    = @('Desktop')
    GUID                    = '9fe5b9b6-0224-4d87-9018-a8978529f6f5'
    Author                  = 'David Segura . Damien Van Robaeys . Gary Blok . Jérôme Bezet-Torres . Mike Marable . Dean Ellerby . Doug McGee'
    CompanyName             = 'OSD Community'
    Copyright               = '(c) 2022 OSD Community'
    Description             = 'The OSD PowerShell Module is a collection of functions and catalogs that make OSDCloud work'
    PowerShellVersion       = '5.1'
    FormatsToProcess        = @(
        '.\Format\MsUpCat.Format.ps1xml'
    )
    FunctionsToExport       = @(
        'Add-OfflineServicingWindowsDriver',
        'Add-WindowsPackageSSU',
        'Backup-Disk.ffu',
        'Backup-MyBitLockerKeys',
        'Block-AdminUser',
        'Block-ManufacturerNeLenovo',
        'Block-NoCurl',
        'Block-NoInternet',
        'Block-PowerShellVersionLt5',
        'Block-StandardUser',
        'Block-WinOS',
        'Block-WinPE',
        'Block-WindowsReleaseIdLt1703',
        'Block-WindowsVersionNe10',
        'Clear-Disk.fixed',
        'Clear-Disk.usb',
        'Connect-WinREWiFi',
        'Connect-WinREWiFiByXMLProfile',
        'Convert-EsdToFolder',
        'Convert-EsdToIso',
        'Convert-EsdToWim',
        'Convert-FolderToIso',
        'Convert-PNPDeviceIDtoGuid',
        'ConvertTo-PSKeyVaultSecret',
        'Copy-IsoToUsb',
        'Copy-PSModuleToFolder',
        'Copy-PSModuleToWim',
        'Copy-PSModuleToWindowsImage',
        'Copy-WinREWIM',
        'Dismount-MyWindowsImage',
        'Edit-AdkWinPEWIM',
        'Edit-MyWinPE',
        'Edit-MyWindowsImage',
        'Edit-OSDCloudWinPE',
        'Enable-OSDCloudODT',
        'Enable-PEWimPSGallery',
        'Enable-PEWindowsImagePSGallery',
        'Export-OSDCertificatesAsReg',
        'Find-OSDCloudFile',
        'Find-OSDCloudODTFile',
        'Find-OSDCloudOfflineFile',
        'Find-OSDCloudOfflinePath',
        'Find-TextInFile',
        'Find-TextInModule',
        'Get-AdkPaths',
        'Get-AzClipboard',
        'Get-CatalogDellApplication',
        'Get-CatalogDellBios',
        'Get-CatalogDellDriver',
        'Get-CatalogDellFirmware',
        'Get-CatalogDellOSDDrivers',
        'Get-CatalogHPAccessory',
        'Get-CatalogHPBios',
        'Get-CatalogHPDriver',
        'Get-CatalogHPFirmware',
        'Get-CatalogHPOSDDrivers',
        'Get-CatalogHPSoftware',
        'Get-CimVideoControllerResolution',
        'Get-CloudSecret',
        'Get-ComObjMicrosoftUpdateAutoUpdate',
        'Get-ComObjMicrosoftUpdateInstaller',
        'Get-ComObjMicrosoftUpdateServiceManager',
        'Get-ComObjects',
        'Get-DellDriverPack',
        'Get-DellWinPEDriverPack',
        'Get-Disk.fixed',
        'Get-Disk.osd',
        'Get-Disk.storage',
        'Get-Disk.usb',
        'Get-DisplayAllScreens',
        'Get-DisplayPrimaryBitmapSize',
        'Get-DisplayPrimaryMonitorSize',
        'Get-DisplayPrimaryScaling',
        'Get-DisplayVirtualScreen',
        'Get-DownLinks',
        'Get-EnablementPackage',
        'Get-FeatureUpdate',
        'Get-GithubRawContent',
        'Get-GithubRawUrl',
        'Get-HpDriverPack',
        'Get-HpWinPEDriverPack',
        'Get-HyperVName',
        'Get-LenovoDriverPack',
        'Get-MicrosoftDriverPack',
        'Get-MsUpCat',
        'Get-MsUpCatUpdate',
        'Get-MyBiosSerialNumber',
        'Get-MyBiosUpdate',
        'Get-MyBiosVersion',
        'Get-MyBitLockerKeyProtectors',
        'Get-MyComputerManufacturer',
        'Get-MyComputerModel',
        'Get-MyComputerProduct',
        'Get-MyDefaultAUService',
        'Get-MyDellBios',
        'Get-MyDriverPack',
        'Get-MyWindowsCapability',
        'Get-MyWindowsPackage',
        'Get-OSD',
        'Get-OSDCatalogDellDriverPack',
        'Get-OSDCatalogDellSystem',
        'Get-OSDCatalogHPDriverPack',
        'Get-OSDCatalogHPPlatformList',
        'Get-OSDCatalogHPSystem',
        'Get-OSDCatalogIntelDisplayDriver',
        'Get-OSDCatalogIntelEthernetDriver',
        'Get-OSDCatalogIntelRadeonDisplayDriver',
        'Get-OSDCatalogIntelWirelessDriver',
        'Get-OSDCatalogLenovoBios',
        'Get-OSDCatalogLenovoDriverPack',
        'Get-OSDCatalogMicrosoftDriverPack',
        'Get-OSDClass',
        'Get-OSDCloudDriverPack',
        'Get-OSDCloudDriverPacks',
        'Get-OSDCloudOSList',
        'Get-OSDCloudTemplate',
        'Get-OSDCloudTemplateNames',
        'Get-OSDCloudWorkspace',
        'Get-OSDDriver',
        'Get-OSDDriverDellModel',
        'Get-OSDDriverHpModel',
        'Get-OSDDriverNvidiaDisplay',
        'Get-OSDDriverWmiQ',
        'Get-OSDGather',
        'Get-OSDHelp',
        'Get-OSDPad',
        'Get-OSDPower',
        'Get-OSDWinEvent',
        'Get-OSDWinPE',
        'Get-PSCloudScript',
        'Get-Partition.fixed',
        'Get-Partition.osd',
        'Get-Partition.usb',
        'Get-ReAgentXml',
        'Get-RegCurrentVersion',
        'Get-ScreenPNG',
        'Get-SessionsXml',
        'Get-SystemFirmwareDevice',
        'Get-SystemFirmwareResource',
        'Get-SystemFirmwareUpdate',
        'Get-TimeZoneFromIP',
        'Get-Volume.fixed',
        'Get-Volume.osd',
        'Get-Volume.usb',
        'Get-WSUSXML',
        'Get-Win11Readiness',
        'Get-WinREPartition',
        'Get-WinREWiFi',
        'Get-WindowsOEMProductKey',
        'Initialize-OSDCloudStartnet',
        'Install-SystemFirmwareUpdate',
        'Invoke-CloudSecret',
        'Invoke-Exe',
        'Invoke-MSCatalogParseDate',
        'Invoke-OSDCloud',
        'Invoke-WebPSScript',
        'Invoke-oobeAddNetFX3',
        'Invoke-oobeAddRSAT',
        'Invoke-oobeUpdateDrivers',
        'Invoke-oobeUpdateWindows',
        'Mount-MyWindowsImage',
        'New-AdkCopyPE',
        'New-AdkISO',
        'New-Bootable.usb',
        'New-CAB',
        'New-CabDevelopment',
        'New-OSDCloudISO',
        'New-OSDCloudTemplate',
        'New-OSDCloudUSB',
        'New-OSDCloudWorkspace',
        'New-OSDisk',
        'Remove-AppxOnline',
        'Resolve-MsUrl',
        'Save-ClipboardImage',
        'Save-EnablementPackage',
        'Save-FeatureUpdate',
        'Save-MsUpCatDriver',
        'Save-MsUpCatUpdate',
        'Save-MyBiosUpdate',
        'Save-MyBitLockerExternalKey',
        'Save-MyBitLockerKeyPackage',
        'Save-MyBitLockerRecoveryPassword',
        'Save-MyDellBios',
        'Save-MyDellBiosFlash64W',
        'Save-MyDriverPack',
        'Save-OSDDownload',
        'Save-SystemFirmwareUpdate',
        'Save-WebFile',
        'Save-WinPECloudDriver',
        'Select-Disk.ffu',
        'Select-Disk.fixed',
        'Select-Disk.osd',
        'Select-Disk.storage',
        'Select-Disk.usb',
        'Select-OSDCloudAutopilotJsonItem',
        'Select-OSDCloudFileWim',
        'Select-OSDCloudImageIndex',
        'Select-OSDCloudODTFile',
        'Select-Volume.fixed',
        'Select-Volume.osd',
        'Select-Volume.usb',
        'Set-AzClipboard',
        'Set-BitlockerRegValuesXTS256',
        'Set-BootmgrTimeout',
        'Set-ClipboardScreenshot',
        'Set-CloudSecret',
        'Set-DisRes',
        'Set-HyperVName',
        'Set-OSDCloudTemplate',
        'Set-OSDCloudWorkspace',
        'Set-SetupCompleteBitlocker',
        'Set-SetupCompleteCreateFinish',
        'Set-SetupCompleteCreateStart',
        'Set-SetupCompleteDefenderUpdate',
        'Set-SetupCompleteHyperVName',
        'Set-SetupCompleteNetFX',
        'Set-SetupCompleteOEMActivation',
        'Set-SetupCompleteSetWiFi',
        'Set-TimeZoneFromIP',
        'Set-WiFi',
        'Set-WimExecutionPolicy',
        'Set-WinREWiFi',
        'Set-WindowsImageExecutionPolicy',
        'Set-WindowsOEMActivation',
        'Show-MsSettings',
        'Show-RegistryXML',
        'Start-DiskImageGUI',
        'Start-EjectCD',
        'Start-OOBEDeploy',
        'Start-OSDCloud',
        'Start-OSDCloudAzure',
        'Start-OSDCloudGUI',
        'Start-OSDCloudGUIDev',
        'Start-OSDCloudREAzure',
        'Start-OSDDiskPart',
        'Start-OSDPad',
        'Start-OSDeployPad',
        'Start-ScreenPNGProcess',
        'Start-WinREWiFi',
        'Stop-ScreenPNGProcess',
        'Test-FolderToIso',
        'Test-IsVM',
        'Test-MicrosoftUpdateCatalog',
        'Test-WebConnection',
        'Test-WindowsImage',
        'Test-WindowsImageMountPath',
        'Test-WindowsImageMounted',
        'Test-WindowsPackageCAB',
        'Unblock-WindowsUpdate',
        'Unlock-MyBitLockerExternalKey',
        'Update-DefenderStack',
        'Update-MyDellBios',
        'Update-MyWindowsImage',
        'Update-OSDCloudUSB',
        'Use-WinPEContent',
        'Wait-WebConnection',
        'Import-OSDCloudWinPEDriverMDT',
        'Invoke-OSDCloudDriverPackCM',
        'Invoke-OSDCloudDriverPackMDT',
        'Invoke-OSDCloudDriverPackPPKG',
        'Enable-SpecializeDriverPack',
        'Expand-StagedDriverPack',
        'Expand-ZTIDriverPack',
        'Import-MDTWinPECloudDriver',
        'Invoke-OSDSpecialize',
        'Invoke-OSDSpecializeDev',
        'Save-ZTIDriverPack',
        'Set-OSDCloudUnattendAuditMode',
        'Set-OSDCloudUnattendAuditModeAutopilot',
        'Set-OSDCloudUnattendSpecialize',
        'Set-OSDCloudUnattendSpecializeDev',
        'Set-OSDxCloudUnattendSpecialize',
        'Connect-OSDCloudAzure',
        'Get-OSDCloudAzureResources'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = '*'
    PrivateData = @{
        PSData = @{
            Tags            = @('osd','osdeploy','osdcloud')
            LicenseUri      = 'https://github.com/OSDeploy/OSD/blob/master/LICENSE'
            ProjectUri      = 'https://github.com/OSDeploy/OSD'
            IconUri         = 'https://raw.githubusercontent.com/OSDeploy/OSD/master/OSD.png'
            ReleaseNotes    = 'https://osd.osdeploy.com'
        }
    }
}
