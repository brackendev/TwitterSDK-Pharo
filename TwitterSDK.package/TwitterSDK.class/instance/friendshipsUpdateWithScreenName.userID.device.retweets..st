Twitter friendships
friendshipsUpdateWithScreenName: screenName userID: userID device: device retweets: retweets
	"https://dev.twitter.com/rest/reference/post/friendships/update"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'update.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	device
		ifNotNil: [ u queryAt: 'device' put: device ].
	retweets
		ifNotNil: [ u queryAt: 'retweets' put: device ].
	^ self executePOSTRequestWithURL: u
