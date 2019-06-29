Twitter savedSearches
savedSearchesDestroyWithID: id
	"https://dev.twitter.com/rest/reference/post/saved_searches/destroy/%3Aid"

	^ self
		executePOSTRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'saved_searches';
				addPathSegment: 'destroy';
				addPathSegment: id , '.json')
