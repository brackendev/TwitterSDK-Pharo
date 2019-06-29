Twitter blocks
blocksListWithIncludeEntities: includeEntitiesBool skipStatus: skipStatusBool cursor: cursor
	"https://dev.twitter.com/rest/reference/get/blocks/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'blocks';
		addPathSegment: 'list.json'.
	includeEntitiesBool ifNotNil: [ u queryAt: 'include_entities' put: includeEntitiesBool ].
	skipStatusBool ifNotNil: [ u queryAt: 'skip_status' put: skipStatusBool ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	^ self executeGETRequestWithURL: u
