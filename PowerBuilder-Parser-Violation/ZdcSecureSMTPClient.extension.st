Extension { #name : #ZdcSecureSMTPClient }

{ #category : #'*PowerBuilder-Parser-Violation' }
ZdcSecureSMTPClient class >> sendPWBCriticsUsingGMailAccountPassword: password to: receiverAddressList message: mailMessage [
	| smtpClient |
	(smtpClient := self new)
		user: 'pwbcritics@gmail.com';
		password: password.
	smtpClient
		openOnHost: (NetNameResolver addressForName: 'smtp.gmail.com')
		port: 465.
	mailMessage setField: 'from' toString: 'pwbcritics@gmail.com'.
	mailMessage setField: 'to' to: 'text/html'.
	mailMessage to: receiverAddressList.
	^ smtpClient
		mailFrom: 'pwbcritics@gmail.com'
			to: receiverAddressList
			text: mailMessage text;
		quit;
		close;
		yourself
]
