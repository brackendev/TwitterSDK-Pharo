Twitter friends
friendsIDsWithUserID: userID screenName: screenName cursor: cursor stringifyIDs: stringifyIDs count: count
	"https://dev.twitter.com/rest/reference/get/friends/ids"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friends';
		addPathSegment: 'ids.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	^ self executeGETRequestWithURL: u
