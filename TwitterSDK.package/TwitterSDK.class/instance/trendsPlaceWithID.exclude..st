Twitter trends
trendsPlaceWithID: id exclude: exclude
	"https://dev.twitter.com/rest/reference/get/trends/place"

	| url |
	url := TwitterSDKZnUrl create
		addPathSegment: 'trends';
		addPathSegment: 'place.json'.
	id ifNotNil: [ url queryAt: 'id' put: id ].
	exclude ifNotNil: [ url queryAt: 'exclude' put: exclude ].
	^ self executeGETRequestWithURL: url
