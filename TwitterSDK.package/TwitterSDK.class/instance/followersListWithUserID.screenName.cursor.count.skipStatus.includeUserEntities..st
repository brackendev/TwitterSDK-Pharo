Twitter followers
followersListWithUserID: userID screenName: screenName cursor: cursor count: count skipStatus: skipStatus includeUserEntities: includeUserEntities
	"https://dev.twitter.com/rest/reference/get/followers/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'followers';
		addPathSegment: 'list.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	includeUserEntities ifNotNil: [ u queryAt: 'include_user_entities' put: includeUserEntities ].
	^ self executeGETRequestWithURL: u
