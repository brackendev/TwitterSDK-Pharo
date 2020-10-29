I am TwitterSDKTools, an object to interact with the Twitter API (version 1.1).

Example usage:

	twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: TOKEN_SECRET.
	TwitterSDKTools postTweet: twitter status: 'Test' image: 'test.jpg'. 
