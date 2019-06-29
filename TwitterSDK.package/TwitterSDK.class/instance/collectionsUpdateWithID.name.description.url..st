Twitter collections
collectionsUpdateWithID: id name: name description: description url: url
	"https://dev.twitter.com/rest/reference/post/collections/update"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'update.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	name ifNotNil: [ u queryAt: 'name' put: name ].
	description ifNotNil: [ u queryAt: 'description' put: description ].
	url ifNotNil: [ u queryAt: 'url' put: url ].
	^ self executePOSTRequestWithURL: u
