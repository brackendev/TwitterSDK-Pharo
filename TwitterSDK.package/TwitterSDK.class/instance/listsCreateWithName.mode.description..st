Twitter lists
listsCreateWithName: name mode: mode description: description
	"https://dev.twitter.com/rest/reference/post/lists/create"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'create.json'.
	name ifNotNil: [ u queryAt: 'name' put: name ].
	mode ifNotNil: [ u queryAt: 'mode' put: mode ].
	description ifNotNil: [ u queryAt: 'description' put: description ].
	^ self executePOSTRequestWithURL: u
