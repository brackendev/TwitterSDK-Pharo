private
entitiesForTweet: aTweet
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
tweet := TwitterSDKTools retrieveTweetFromID: 763742584380456960 twitterSDK: twitter.
TwitterSDKTools entitiesForTweet: tweet."

	(aTweet includesKey: 'extended_entities')
		ifTrue: [ ^ aTweet at: 'extended_entities' ]
		ifFalse: [ (aTweet includesKey: 'entities')
				ifTrue: [ ^ aTweet at: 'entities' ]
				ifFalse: [ ^ nil ] ]
