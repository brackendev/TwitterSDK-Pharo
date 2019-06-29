Twitter users
usersShowWithUserID: userID screenName: screenName includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/users/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'show.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
