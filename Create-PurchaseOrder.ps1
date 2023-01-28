#Merges Quote PDF file and PO file to 1 PDF
[CmdletBinding()]
param (
    [Parameter(Mandatory,HelpMessage='Enter PO Number')]
    [string]$PoNumber,

    [Parameter(Mandatory,HelpMessage='Enter Vendor Name')]
    [string]$Vendor,

    [Parameter(HelpMessage='Description of PO')]
    [string]$Description,

    $FilePath1 = "C:\Accounting\PO\2022\$PoNumber $Vendor $Description\$PoNumber $Vendor $Description.pdf",
    $FilePath2 = "C:\Accounting\PO\2022\$PoNumber $Vendor $Description\Quote.pdf",
    $OutputFile = "C:\Accounting\PO\2022\$PoNumber $Vendor $Description\$PoNumber $Vendor $Description PO.pdf", # Shouldn't exist / will be overwritten

    [Parameter()]
    [ValidateNotNull()]
    [System.Management.Automation.PSCredential]
    [System.Management.Automation.Credential()]
    $Credential = [System.Management.Automation.PSCredential]::Empty

)

Merge-PDF -InputFile $FilePath1, $FilePath2 -OutputFile $OutputFile
