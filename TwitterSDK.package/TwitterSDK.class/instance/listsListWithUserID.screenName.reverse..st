Twitter lists
listsListWithUserID: userID screenName: screenName reverse: reverse
	"https://dev.twitter.com/rest/reference/get/lists/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'list.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	reverse ifNotNil: [ u queryAt: 'reverse' put: reverse ].
	^ self executeGETRequestWithURL: u
