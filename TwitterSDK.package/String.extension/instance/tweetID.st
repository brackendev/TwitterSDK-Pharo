*TwitterSDK
tweetID
	| oc |
	self isTweetURL
		ifFalse: [ ^ nil ].
	oc := self asLowercase allRangesOfRegexMatches: '.*\/status\/'.
	oc
		ifNotEmpty: [ | s |
			s := self copyReplaceFrom: ((oc at: 1) at: 1) to: (oc at: 1) last with: ''.
			oc := s allRangesOfRegexMatches: '\/'.
			oc
				ifEmpty: [ ^ s ]
				ifNotEmpty: [ ^ s copyReplaceFrom: ((oc at: 1) at: 1) to: s size with: ''.
					]
			].
	^ nil
