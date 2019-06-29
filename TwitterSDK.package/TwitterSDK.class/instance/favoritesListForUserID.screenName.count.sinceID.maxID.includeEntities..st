Twitter favorites
favoritesListForUserID: userID screenName: screenName count: count sinceID: sinceID maxID: maxID includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/favorites/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'favorites';
		addPathSegment: 'list.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
