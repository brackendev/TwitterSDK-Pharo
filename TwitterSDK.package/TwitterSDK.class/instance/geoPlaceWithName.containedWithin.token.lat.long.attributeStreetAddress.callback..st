Twitter geo
geoPlaceWithName: name containedWithin: containedWithin token: token lat: lat long: long attributeStreetAddress: attributeStreetAddress callback: callback
	"https://dev.twitter.com/rest/reference/post/geo/place"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'geo';
		addPathSegment: 'place.json'.
	name ifNotNil: [ u queryAt: 'name' put: name ].
	containedWithin ifNotNil: [ u queryAt: 'contained_within' put: containedWithin ].
	token ifNotNil: [ u queryAt: 'token' put: token ].
	lat ifNotNil: [ u queryAt: 'lat' put: lat ].
	long ifNotNil: [ u queryAt: 'long' put: long ].
	attributeStreetAddress ifNotNil: [ u queryAt: 'attribute:street_address' put: attributeStreetAddress ].
	callback ifNotNil: [ u queryAt: 'callback' put: callback ].
	^ self executePOSTRequestWithURL: u
