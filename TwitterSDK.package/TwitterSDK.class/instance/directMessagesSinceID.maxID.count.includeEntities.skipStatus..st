Twitter directMessages
directMessagesSinceID: sinceID maxID: maxID count: count includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/get/direct_messages"

	| u |
	u := TwitterSDKZnUrl create addPathSegment: 'direct_messages.json'.
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executeGETRequestWithURL: u
