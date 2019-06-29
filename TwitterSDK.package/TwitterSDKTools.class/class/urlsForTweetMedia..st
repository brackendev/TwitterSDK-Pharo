private
urlsForTweetMedia: tweetMedia
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
tweet := TwitterSDKTools retrieveTweetFromID: 763742584380456960 twitterSDK: twitter.
entities := TwitterSDKTools entitiesForTweet: tweet.
media := TwitterSDKTools mediaForTweetEntities: entities.
TwitterSDKTools urlsForTweetMedia: media."

	| oc |
	oc := tweetMedia
		collect: [ :each | 
			(each includesKey: 'media_url')
				ifTrue: [ each at: 'media_url' ] ].
	^ oc
