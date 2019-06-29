Twitter friendships
friendshipsDestroyWithScreenName: screenName userID: userID
	"https://dev.twitter.com/rest/reference/post/friendships/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'destroy.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	^ self executePOSTRequestWithURL: u
