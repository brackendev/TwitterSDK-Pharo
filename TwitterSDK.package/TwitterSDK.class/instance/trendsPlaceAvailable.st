Twitter trends
trendsPlaceAvailable
	"https://dev.twitter.com/rest/reference/get/trends/available"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'trends';
				addPathSegment: 'available.json')
