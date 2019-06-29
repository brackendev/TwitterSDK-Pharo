Twitter savedSearches
savedSearchesShowWithID: id
	"https://dev.twitter.com/rest/reference/get/saved_searches/show/%3Aid"

	^ self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'saved_searches';
				addPathSegment: 'show';
				addPathSegment: id , '.json')
