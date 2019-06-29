Twitter directMessages
directMessagesSentWithSinceID: sinceID maxID: maxID count: count page: page includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/direct_messages/sent"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'direct_messages';
		addPathSegment: 'sent.json'.
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	page ifNotNil: [ u queryAt: 'page' put: page ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
