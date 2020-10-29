tests-strings
testReplaceRegExWith
	self assert: (' T e s t ' replaceRegEx: '^\s+' with: '') equals: 'T e s t '.
	self assert: (' T e s t ' replaceRegEx: '\s+$' with: '') equals: ' T e s t'.
	self assert: ('T e s t' replaceRegEx: '^\s+' with: '') equals: 'T e s t'.
	self assert: ('T e s t' replaceRegEx: '\s+$' with: '') equals: 'T e s t'.
	self assert: (' Test ' replaceRegEx: '^\s+' with: '') equals: 'Test '.
	self assert: (' Test ' replaceRegEx: '\s+$' with: '') equals: ' Test'
