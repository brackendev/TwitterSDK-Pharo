public
mediaURLsForTweetID: anInteger twitterSDK: aTwitterSDK
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
TwitterSDKTools mediaURLsForTweetID: 763742584380456960 twitterSDK: twitter."

	^ self mediaURLsForTweet: (TwitterSDKTools retrieveTweetForID: anInteger twitterSDK: aTwitterSDK)
