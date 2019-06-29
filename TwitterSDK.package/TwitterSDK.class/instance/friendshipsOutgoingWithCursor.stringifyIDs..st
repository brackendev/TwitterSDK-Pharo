Twitter friendships
friendshipsOutgoingWithCursor: cursor stringifyIDs: stringifyIDs
	"https://dev.twitter.com/rest/reference/get/friendships/outgoing"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'outgoing.json'.
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	^ self executeGETRequestWithURL: u
