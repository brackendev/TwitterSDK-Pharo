Twitter users
usersSearchWithQuery: query page: page count: count includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/users/search"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'search.json'.
	query ifNotNil: [ u queryAt: 'q' put: query ].
	page ifNotNil: [ u queryAt: 'page' put: page ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
