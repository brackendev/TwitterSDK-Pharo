*TwitterSDK
replaceRegEx: aRegEx with: aReplacementString
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
