Twitter lists
listsMembersWithListID: listID slug: slug ownerScreenName: ownerScreenName ownerID: ownerID count: count cursor: cursor includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/get/lists/members"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'members.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executeGETRequestWithURL: u
