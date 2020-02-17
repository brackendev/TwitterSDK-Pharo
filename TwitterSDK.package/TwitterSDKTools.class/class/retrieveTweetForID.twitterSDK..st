public
retrieveTweetForID: aString twitterSDK: aTwitterSDK
	| response |
	response := aTwitterSDK getPathSegment: 'statuses/lookup.json' parameters: (Dictionary newFrom: {'id' -> aString}).
	(response isNil or: [ response isEmpty ])
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ response last ]