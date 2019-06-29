Twitter savedSearches
savedSearchesCreateWithQuery: query
	"https://dev.twitter.com/rest/reference/post/saved_searches/create"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'saved_searches';
		addPathSegment: 'create.json'.
	query ifNotNil: [ u queryAt: 'query' put: query ].
	^ self executePOSTRequestWithURL: u
