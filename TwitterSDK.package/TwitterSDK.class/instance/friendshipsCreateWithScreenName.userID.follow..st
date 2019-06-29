Twitter friendships
friendshipsCreateWithScreenName: screenName userID: userID follow: follow
	"https://dev.twitter.com/rest/reference/post/friendships/create"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'create.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	follow ifNotNil: [ u queryAt: 'follow' put: follow ].
	^ self executePOSTRequestWithURL: u
