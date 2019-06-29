I am TwitterSDK, an object to interact with the Twitter API (version 1.1). More info at <https://brackendev.github.io/TwitterSDK-Pharo/>.

Example usage:

	twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: TOKEN_SECRET.
	twitter friendshipsCreateWithScreenName: 'brackendev' userID: nil follow: true.
