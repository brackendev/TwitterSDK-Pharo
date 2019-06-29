Twitter users
usersLookupWithScreenName: screenName userID: userID includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/users/lookup"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'lookup.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
