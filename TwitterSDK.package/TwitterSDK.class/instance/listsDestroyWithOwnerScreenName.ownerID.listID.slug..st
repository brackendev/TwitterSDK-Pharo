Twitter lists
listsDestroyWithOwnerScreenName: ownerScreenName ownerID: ownerID listID: listID slug: slug
	"https://dev.twitter.com/rest/reference/post/lists/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'destroy.json'.
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	^ self executePOSTRequestWithURL: u
