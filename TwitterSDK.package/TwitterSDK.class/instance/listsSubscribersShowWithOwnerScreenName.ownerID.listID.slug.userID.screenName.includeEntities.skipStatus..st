Twitter lists
listsSubscribersShowWithOwnerScreenName: ownerScreenName ownerID: ownerID listID: listID slug: slug userID: userID screenName: screenName includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/get/lists/subscribers/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'subscribers';
		addPathSegment: 'show.json'.
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executeGETRequestWithURL: u
