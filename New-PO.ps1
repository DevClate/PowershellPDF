$PoNumber = Read-Host "Enter PO Number"
$Vendor = Read-Host "Vendor Name"
$Description = Read-Host "Description of PO"

$FilePath1 = "C:\Accounting\PO\2022\$PoNumber $Vendor $Description\$PoNumber $Vendor $Description.pdf"
$FilePath2 = "C:\Accounting\PO\2022\$PoNumber $Vendor $Description\Quote.pdf"

$OutputFile = "\Accounting\PO\2022\$PoNumber $Vendor $Description\$PoNumber $Vendor $Description PO.pdf" # Shouldn't exist / will be overwritten

Merge-PDF -InputFile $FilePath1, $FilePath2 -OutputFile $OutputFile
