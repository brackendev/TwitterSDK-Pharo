Extension { #name : #String }

{ #category : #'*TwitterSDK' }
String >> cleanTweetTitle [
	self isTweetTitle
		ifTrue: [ |s | s:= self replaceRegEx: '^.*on Twitter\: \"' with: ''. ^ s replaceRegEx: '\"$' with: '' ].
	^ self

]

{ #category : #'*TwitterSDK' }
String >> cleanTweetURL [
	self isTweetURL
		ifTrue: [ ^ 'https://twitter.com/',self tweetUserName ,'/status/', self tweetID  ].
	^ self

]

{ #category : #'*TwitterSDK' }
String >> replaceRegEx: aRegEx with: aReplacementString [
	| oc ns |
	oc := self allRangesOfRegexMatches: aRegEx.
	ns := self.
	oc
		ifEmpty: [ ^ ns ]
		ifNotEmpty: [ oc
				do: [ :interval | 
					^ ns copyReplaceFrom: (interval at: 1) to: interval last with: aReplacementString.
					]
			]

]

{ #category : #'*TwitterSDK' }
String >> tweetID [
	| oc |
	self isTweetURL
		ifFalse: [ ^ nil ].
	oc := self asLowercase allRangesOfRegexMatches: '.*\/status\/'.
	oc
		ifNotEmpty: [ | s |
			s := self
				copyReplaceFrom: ((oc at: 1) at: 1)
				to: (oc at: 1) last
				with: ''.
			oc := s allRangesOfRegexMatches: '\/'.
			^ oc
				ifEmpty: [ s ]
				ifNotEmpty: [ s copyReplaceFrom: ((oc at: 1) at: 1) to: s size with: '' ]
			].
	^ nil
]

{ #category : #'*TwitterSDK' }
String >> tweetUserName [
	| oc |
	self isTweetURL
		ifFalse: [ ^ nil ].
	oc := self asLowercase allRangesOfRegexMatches: '^https?\:\/\/(|www\.)twitter\.com\/'.
	oc
		ifNotEmpty: [ | s |
			s := self copyReplaceFrom: ((oc at: 1) at: 1) to: (oc at: 1) last with: ''.
			oc := s allRangesOfRegexMatches: '\/'.
			oc
				ifNotEmpty: [^ s copyReplaceFrom: ((oc at: 1) at: 1) to: s size with: ''.
					]
			].
	^ nil

]
