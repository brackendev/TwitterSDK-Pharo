private
mediaForTweetEntities: tweetEntities
	^ (tweetEntities includesKey: 'media')
		ifTrue:
			[ (tweetEntities at: 'media') ifEmpty: [ nil ] ]
		ifFalse: [ nil ]