Twitter blocks
blocksDestroyWithScreenName: screenName userID: userID includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/post/blocks/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'blocks';
		addPathSegment: 'destroy.json'.
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executePOSTRequestWithURL: u
