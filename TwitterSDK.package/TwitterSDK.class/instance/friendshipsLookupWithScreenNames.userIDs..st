Twitter friendships
friendshipsLookupWithScreenNames: screenNames userIDs: userIDs
	"https://dev.twitter.com/rest/reference/get/friendships/lookup"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'followers';
		addPathSegment: 'list.json'.
	screenNames ifNotNil: [ u queryAt: 'screen_name' put: screenNames ].
	userIDs ifNotNil: [ u queryAt: 'user_id' put: userIDs ].
	^ self executeGETRequestWithURL: u
