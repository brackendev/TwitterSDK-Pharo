*TwitterSDK
cleanTweetTitle
	self isTweetTitle
		ifTrue: [ |s | s:= self replaceRegEx: '^.*on Twitter\: \"' with: ''. ^ s replaceRegEx: '\"$' with: '' ].
	^ self
