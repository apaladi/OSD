function Start-OOBE.wifi {
    [CmdletBinding()]
    param ()
    #=======================================================================
    #	Block
    #=======================================================================
    Block-StandardUser
    Block-PowerShellVersionLt5
    Block-WinPE
    #=======================================================================
    #	Start
    #=======================================================================
    start ms-availablenetworks:
    #=======================================================================
}