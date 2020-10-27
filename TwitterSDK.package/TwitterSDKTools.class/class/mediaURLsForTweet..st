public
mediaURLsForTweet: aTweet
	| entities media urls |
	entities := self entitiesForTweet: aTweet.
	(entities isNil or: [ entities isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	media := self mediaForTweetEntities: entities.
	(media isNil or: [ media isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	urls := self urlsForTweetMedia: media.
	^ (urls isNil or: [ urls isEmpty ])
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ urls ]