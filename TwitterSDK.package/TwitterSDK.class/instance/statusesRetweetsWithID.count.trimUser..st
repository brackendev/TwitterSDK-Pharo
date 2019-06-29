Twitter statuses
statusesRetweetsWithID: idString count: count trimUser: trimUser
	"https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'retweets';
		addPathSegment: idString , '.json'.
		u queryAt: 'tweet_mode' put: 'extended'.
	count ifNotNil: [ u queryAt: 'count' put: count ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	^ self executeGETRequestWithURL: u
