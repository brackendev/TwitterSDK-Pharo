Twitter statuses
statusesLookupWithIDs: idString includeEntities: includeEntities trimUser: trimUser map: map includeExtAltText: includeExtAltText
	"https://dev.twitter.com/rest/reference/get/statuses/lookup"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'lookup.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	idString ifNotNil: [ u queryAt: 'id' put: idString ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	map ifNotNil: [ u queryAt: 'map' put: map ].
	includeExtAltText ifNotNil: [ u queryAt: 'include_ext_alt_text' put: includeExtAltText ].
	^ self executeGETRequestWithURL: u
