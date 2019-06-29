Twitter geo
geoSearchWithLat: lat long: long query: query ip: ip granularity: granularity accuracy: accuracy maxResults: maxResults containedWithin: containedWithin attributeStreetAddress: attributeStreetAddress callback: callback
	"https://dev.twitter.com/rest/reference/get/geo/search"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'geo';
		addPathSegment: 'search.json'.
	lat ifNotNil: [ u queryAt: 'lat' put: lat ].
	long ifNotNil: [ u queryAt: 'long' put: long ].
	query ifNotNil: [ u queryAt: 'query' put: query ].
	ip ifNotNil: [ u queryAt: 'ip' put: ip ].
	granularity ifNotNil: [ u queryAt: 'granularity' put: granularity ].
	accuracy ifNotNil: [ u queryAt: 'accuracy' put: accuracy ].
	maxResults ifNotNil: [ u queryAt: 'max_results' put: maxResults ].
	containedWithin ifNotNil: [ u queryAt: 'contained_within' put: containedWithin ].
	attributeStreetAddress ifNotNil: [ u queryAt: 'attribute:street_address' put: attributeStreetAddress ].
	callback ifNotNil: [ u queryAt: 'callback' put: callback ].
	^ self executeGETRequestWithURL: u
