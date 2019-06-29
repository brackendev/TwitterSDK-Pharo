Twitter friendships
friendshipsIncomingWithCursor: cursor stringifyIDs: stringifyIDs
	"https://dev.twitter.com/rest/reference/get/friendships/incoming"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'incoming.json'.
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	^ self executeGETRequestWithURL: u
