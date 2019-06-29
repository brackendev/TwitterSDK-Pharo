Twitter lists
listsSubscriptionsWithUserID: userID screenName: screenName count: count cursor: cursor
	"https://dev.twitter.com/rest/reference/get/lists/subscriptions"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'subscriptions.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	^ self executeGETRequestWithURL: u
