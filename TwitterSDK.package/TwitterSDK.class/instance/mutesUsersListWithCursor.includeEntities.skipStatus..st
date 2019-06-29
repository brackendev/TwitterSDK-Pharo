Twitter mutes
mutesUsersListWithCursor: cursor includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/get/mutes/users/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'mutes';
		addPathSegment: 'users';
		addPathSegment: 'list.json'.
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executeGETRequestWithURL: u
