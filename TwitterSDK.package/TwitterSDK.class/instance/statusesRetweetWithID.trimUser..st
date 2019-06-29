Twitter statuses
statusesRetweetWithID: id trimUser: trimUser
	"https://dev.twitter.com/rest/reference/post/statuses/retweet/%3Aid"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'retweet';
		addPathSegment: id , '.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	^ self executePOSTRequestWithURL: u
