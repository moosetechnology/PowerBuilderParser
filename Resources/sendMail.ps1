# Define clear text string for username and password
[string]$userName = 'pwbcritics'
[string]$userPassword = '8v$oPDA0cA'

# Convert to SecureString
[securestring]$secStringPassword = ConvertTo-SecureString $userPassword -AsPlainText -Force
[pscredential]$credObject = New-Object System.Management.Automation.PSCredential ($userName, $secStringPassword)

#get body
[string]$body = $args[0]
[string]$authorAddressMail = $args[1] 
[string[]]$managers = @('Jerome.Sudich@sa-cim.fr','fatiha.Djareddir@sa-cim.fr')
$sendMailParams = @{
    From = 'pwbcritics@gmail.com' ## Must be gmail.com
    To = $authorAddressMail
    Subject = 'PWB Critics violation'
    Body = $body
    CC = $managers
    SMTPServer = 'smtp.gmail.com'
    Port = 587
    UseSsl = $true
    BodyAsHtml = $true
    Credential = $credObject
}

Send-MailMessage @sendMailParams