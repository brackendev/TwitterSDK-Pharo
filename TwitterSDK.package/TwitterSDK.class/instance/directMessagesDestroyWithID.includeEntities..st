Twitter directMessages
directMessagesDestroyWithID: id includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/post/direct_messages/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'direct_messages';
		addPathSegment: 'destroy.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executePOSTRequestWithURL: u
