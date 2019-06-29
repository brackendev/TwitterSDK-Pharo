private
mediaForTweetEntities: tweetEntities
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
tweet := TwitterSDKTools retrieveTweetFromID: 763742584380456960 twitterSDK: twitter.
entities := TwitterSDKTools entitiesForTweet: tweet.
TwitterSDKTools mediaForTweetEntities: entities."

	(tweetEntities includesKey: 'media')
		ifTrue: [ (tweetEntities at: 'media') ifEmpty: [ ^ nil ] ifNotEmpty: [ ^ tweetEntities at: 'media' ] ]
		ifFalse: [ ^ nil ]
