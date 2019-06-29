Twitter lists
listsUpdateWithListID: listID slug: slug name: name mode: mode description: description ownerScreenName: ownerScreenName ownerID: ownerID
	"https://dev.twitter.com/rest/reference/post/lists/update"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'update.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	name ifNotNil: [ u queryAt: 'name' put: name ].
	mode ifNotNil: [ u queryAt: 'mode' put: mode ].
	description ifNotNil: [ u queryAt: 'description' put: description ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	^ self executePOSTRequestWithURL: u
