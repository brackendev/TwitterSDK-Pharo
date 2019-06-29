Twitter statuses
statusesRetweetersWithID: id cursor: cursor stringifyIDs: stringifyIDs
	"https://dev.twitter.com/rest/reference/get/statuses/retweeters/ids"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'retweeters';
		addPathSegment: 'ids.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	^ self executeGETRequestWithURL: u
