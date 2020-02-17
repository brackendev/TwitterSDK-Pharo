private
mediaForTweetEntities: tweetEntities
	(tweetEntities includesKey: 'media')
		ifTrue: [ (tweetEntities at: 'media') ifEmpty: [ ^ nil ] ifNotEmpty: [ ^ tweetEntities at: 'media' ] ]
		ifFalse: [ ^ nil ]
