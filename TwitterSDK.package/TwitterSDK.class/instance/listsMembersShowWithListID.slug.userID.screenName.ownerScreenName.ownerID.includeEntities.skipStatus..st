Twitter lists
listsMembersShowWithListID: listID slug: slug userID: userID screenName: screenName ownerScreenName: ownerScreenName ownerID: ownerID includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/get/lists/members/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'members';
		addPathSegment: 'show.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name:' put: screenName ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executeGETRequestWithURL: u
