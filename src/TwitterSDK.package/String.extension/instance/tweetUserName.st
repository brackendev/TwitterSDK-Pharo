*TwitterSDK
tweetUserName
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
