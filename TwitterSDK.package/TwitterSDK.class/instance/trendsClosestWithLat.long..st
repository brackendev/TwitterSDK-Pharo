Twitter trends
trendsClosestWithLat: lat long: long
	"https://dev.twitter.com/rest/reference/get/trends/closest"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'trends';
		addPathSegment: 'closest.json'.
	lat ifNotNil: [ u queryAt: 'lat' put: lat ].
	long ifNotNil: [ u queryAt: 'long' put: long ].
	^ self executeGETRequestWithURL: u
