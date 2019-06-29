Twitter favorites
favoritesCreateWithID: id includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/post/favorites/create"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'favorites';
		addPathSegment: 'create.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executePOSTRequestWithURL: u
