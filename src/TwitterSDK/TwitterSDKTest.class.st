"
A TwitterSDKTest is a test class for testing the behavior of TwitterSDK.

"
Class {
	#name : #TwitterSDKTest,
	#superclass : #TestCase,
	#category : 'TwitterSDK-Tests'
}

{ #category : #'tests-strings' }
TwitterSDKTest >> testReplaceRegExWith [
	self assert: (' T e s t ' replaceRegEx: '^\s+' with: '') equals: 'T e s t '.
	self assert: (' T e s t ' replaceRegEx: '\s+$' with: '') equals: ' T e s t'.
	self assert: ('T e s t' replaceRegEx: '^\s+' with: '') equals: 'T e s t'.
	self assert: ('T e s t' replaceRegEx: '\s+$' with: '') equals: 'T e s t'.
	self assert: (' Test ' replaceRegEx: '^\s+' with: '') equals: 'Test '.
	self assert: (' Test ' replaceRegEx: '\s+$' with: '') equals: ' Test'

]
