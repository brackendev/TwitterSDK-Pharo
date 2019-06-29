Twitter lists
listsShowWithListID: listID slug: slug ownerScreenName: ownerScreenName ownerID: ownerID
	"https://dev.twitter.com/rest/reference/get/lists/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'show.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	^ self executeGETRequestWithURL: u
