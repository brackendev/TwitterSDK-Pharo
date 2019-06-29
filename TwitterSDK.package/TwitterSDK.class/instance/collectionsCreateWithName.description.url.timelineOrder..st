Twitter collections
collectionsCreateWithName: name description: description url: urlString timelineOrder: timelineOrder
	"https://dev.twitter.com/rest/reference/post/collections/create"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'create.json'.
	name ifNotNil: [ u queryAt: 'name' put: name ].
	description ifNotNil: [ u queryAt: 'description' put: description ].
	urlString ifNotNil: [ u queryAt: 'url' put: urlString ].
	timelineOrder ifNotNil: [ u queryAt: 'timeline_order' put: timelineOrder ].
	^ self executePOSTRequestWithURL: u
