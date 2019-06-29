Twitter geo
geoReverseGeocodeWithLat: lat long: long accuracy: accuracy granularity: granularity maxResults: maxResults callback: callback
	"https://dev.twitter.com/rest/reference/get/geo/reverse_geocode"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'geo';
		addPathSegment: 'reverse_geocode.json'.
	lat ifNotNil: [ u queryAt: 'lat' put: lat ].
	long ifNotNil: [ u queryAt: 'long' put: long ].
	accuracy ifNotNil: [ u queryAt: 'accuracy' put: accuracy ].
	granularity ifNotNil: [ u queryAt: 'granularity' put: granularity ].
	maxResults ifNotNil: [ u queryAt: 'max_results' put: maxResults ].
	callback ifNotNil: [ u queryAt: 'callback' put: callback ].
	^ self executeGETRequestWithURL: u
