public
mediaURLsForTweet: aTweet
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
tweet := TwitterSDKTools retrieveTweetFromID: 763742584380456960 twitterSDK: twitter.
TwitterSDKTools mediaURLsForTweet: tweet."

	| entities media urls |
	entities := self entitiesForTweet: aTweet.
	(entities isNil or: [ entities isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	media := self mediaForTweetEntities: entities.
	(media isNil or: [ media isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	urls := self urlsForTweetMedia: media.
	(urls isNil or: [ urls isEmpty ])
		ifTrue: [ ^ OrderedCollection new ]
		ifFalse: [ ^ urls ]
