Twitter collections
collectionsListWithUserID: userID screenName: screenName tweetID: tweetID count: count cursor: cursor
	"https://dev.twitter.com/rest/reference/get/collections/list"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'list.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	tweetID ifNotNil: [ u queryAt: 'tweet_id' put: tweetID ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	^ self executeGETRequestWithURL: u
