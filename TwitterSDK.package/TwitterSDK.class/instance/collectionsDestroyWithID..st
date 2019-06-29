Twitter collections
collectionsDestroyWithID: id
	"https://dev.twitter.com/rest/reference/post/collections/destroy"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'destroy.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	^ self executePOSTRequestWithURL: u
