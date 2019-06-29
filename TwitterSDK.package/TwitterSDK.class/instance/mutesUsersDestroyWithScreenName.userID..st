Twitter mutes
mutesUsersDestroyWithScreenName: screenName userID: userID
	"https://dev.twitter.com/rest/reference/post/mutes/users/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'mutes';
		addPathSegment: 'users';
		addPathSegment: 'destroy.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	^ self executePOSTRequestWithURL: u
