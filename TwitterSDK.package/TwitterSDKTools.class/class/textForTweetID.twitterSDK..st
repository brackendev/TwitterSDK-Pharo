public
textForTweetID: anInteger twitterSDK: aTwitterSDK
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
TwitterSDKTools textForTweetID: 763742584380456960 twitterSDK: twitter."

	| response |
	response := aTwitterSDK
		statusesLookupWithIDs: anInteger
		includeEntities: true
		trimUser: true
		map: nil
		includeExtAltText: true.
	(response isNil or: [ response isEmpty ])
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ self textForTweet: response last ]
