Twitter mutes
mutesUsersIDs: stringifyIDs cursor: cursor
	"https://dev.twitter.com/rest/reference/get/mutes/users/ids"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'mutes';
		addPathSegment: 'users';
		addPathSegment: 'ids.json'.
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	^ self executeGETRequestWithURL: u
