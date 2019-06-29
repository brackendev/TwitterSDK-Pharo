Twitter savedSearches
savedSearchesList
	"https://dev.twitter.com/rest/reference/get/saved_searches/list"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'saved_searches';
				addPathSegment: 'list.json')
