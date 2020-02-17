private
entitiesForTweet: aTweet
	(aTweet includesKey: 'extended_entities')
		ifTrue: [ ^ aTweet at: 'extended_entities' ]
		ifFalse: [ (aTweet includesKey: 'entities')
				ifTrue: [ ^ aTweet at: 'entities' ]
				ifFalse: [ ^ nil ] ]
