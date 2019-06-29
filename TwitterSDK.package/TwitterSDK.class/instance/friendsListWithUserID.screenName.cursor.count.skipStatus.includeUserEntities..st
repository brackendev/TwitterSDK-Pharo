Twitter friends
friendsListWithUserID: userID screenName: screenName cursor: cursor count: count skipStatus: skipStatus includeUserEntities: includeUserEntities
	"https://dev.twitter.com/rest/reference/get/friends/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friends';
		addPathSegment: 'list.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	skipStatus ifNotNil: [ u queryAt: 'skipStatus' put: skipStatus ].
	includeUserEntities ifNotNil: [ u queryAt: 'include_user_entities' put: includeUserEntities ].
	^ self executeGETRequestWithURL: u
