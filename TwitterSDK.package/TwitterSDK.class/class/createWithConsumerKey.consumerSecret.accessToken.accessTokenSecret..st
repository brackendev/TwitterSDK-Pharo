public
createWithConsumerKey: consumerKey consumerSecret: consumerSecret accessToken: aToken accessTokenSecret: aTokenSecret
	"Do this before anything else"

	"Setup your app at https://apps.twitter.com/app/"

	| consumerData accessTokenDict userAccess service accessToken |
	consumerData := ZnOAuth1ConsumerData newForTwitterAuthentication.
	consumerData consumer: consumerKey.
	consumerData consumerSecret: consumerSecret.
	service := ZnOAuth1Service new.
	service providerAccount: consumerData.
	accessTokenDict := Dictionary new.
	accessTokenDict at: 'oauth_token' put: aToken.
	accessTokenDict at: 'oauth_token_secret' put: aTokenSecret.
	accessToken := ZnOAuth1Token newFromDictionary: accessTokenDict.
	userAccess := ZnOAuth1TwitterUserAccess new oauth1Service: service.
	userAccess accessToken: accessToken.
	^ self new
		service: service;
		userAccess: userAccess;
		accessToken: accessToken;
		yourself
