Twitter geo
geoInfoWithPlaceID: idString
	"https://dev.twitter.com/rest/reference/get/geo/id/%3Aplace_id"

	^self
		executePOSTRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'geo';
				addPathSegment: 'id';
				addPathSegment: idString , '.json')
