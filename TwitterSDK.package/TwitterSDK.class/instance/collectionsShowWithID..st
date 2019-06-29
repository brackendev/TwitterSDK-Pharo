Twitter collections
collectionsShowWithID: id
	"https://dev.twitter.com/rest/reference/get/collections/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'show.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	^ self executeGETRequestWithURL: u
