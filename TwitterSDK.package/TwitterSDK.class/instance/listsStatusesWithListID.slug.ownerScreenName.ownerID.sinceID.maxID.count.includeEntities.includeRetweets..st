Twitter lists
listsStatusesWithListID: listID slug: slug ownerScreenName: ownerScreenName ownerID: ownerID sinceID: sinceID maxID: maxID count: count includeEntities: includeEntities includeRetweets: includeRetweets
	"https://dev.twitter.com/rest/reference/get/lists/statuses"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'statuses.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	includeRetweets ifNotNil: [ u queryAt: 'include_rts' put: includeRetweets ].
	^ self executeGETRequestWithURL: u
