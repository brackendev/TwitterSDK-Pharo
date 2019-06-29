Twitter blocks
blocksListWithStringifyIDs: stringifyIDs cursor: cursor
	"https://dev.twitter.com/rest/reference/get/blocks/ids"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'blocks';
		addPathSegment: 'ids.json'.
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	^ self executeGETRequestWithURL: u
