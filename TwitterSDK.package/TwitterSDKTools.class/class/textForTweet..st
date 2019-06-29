private
textForTweet: aTweet
	"Example:
twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: ACCESS_TOKEN_SECRET.
tweet := TwitterSDKTools retrieveTweetFromID: 763742584380456960 twitterSDK: twitter.
TwitterSDKTools textForTweet: tweet."

	(aTweet includesKey: 'full_text')
		ifTrue: [ ^ aTweet at: 'full_text' ]
		ifFalse: [ ^ (aTweet includesKey: 'text')
				ifTrue: [ ^ aTweet at: 'text' ]
				ifFalse: [ ^ nil ] ]
