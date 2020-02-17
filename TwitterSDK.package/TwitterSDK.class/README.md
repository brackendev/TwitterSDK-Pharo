I am TwitterSDK, an object to interact with the Twitter API (version 1.1).

Example usage:

	twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: TOKEN_SECRET.
	twitterSDK postPathSegment: 'friendships/create.json' parameters: (Dictionary newFrom: {'screen_name' -> 'brackendev'}).
