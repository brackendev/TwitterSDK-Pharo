private
textForTweet: aTweet
	(aTweet includesKey: 'full_text')
		ifTrue: [ ^ aTweet at: 'full_text' ]
		ifFalse: [ ^ (aTweet includesKey: 'text')
				ifTrue: [ ^ aTweet at: 'text' ]
				ifFalse: [ ^ nil ] ]
