Twitter lists
listsMembersCreateAllWithListID: listID slug: slug screenName: screenName ownerScreenName: ownerScreenName ownerID: ownerID
	"https://dev.twitter.com/rest/reference/post/lists/members/create_all"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'members';
		addPathSegment: 'create_all.json'.
	listID ifNotNil: [ u queryAt: 'list_id' put: listID ].
	slug ifNotNil: [ u queryAt: 'slug' put: slug ].
	screenName ifNotNil: [ u queryAt: 'screen_name:' put: screenName ].
	ownerScreenName ifNotNil: [ u queryAt: 'owner_screen_name' put: ownerScreenName ].
	ownerID ifNotNil: [ u queryAt: 'owner_id' put: ownerID ].
	^ self executePOSTRequestWithURL: u
