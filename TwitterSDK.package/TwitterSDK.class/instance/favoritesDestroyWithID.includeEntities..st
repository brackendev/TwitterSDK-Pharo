Twitter favorites
favoritesDestroyWithID: id includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/post/favorites/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'favorites';
		addPathSegment: 'destroy.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executePOSTRequestWithURL: u
