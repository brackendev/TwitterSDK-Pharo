Twitter statuses
statusesUnretweetWithID: id trimUser: trimUser
	"https://developer.twitter.com/en/docs/tweets/post-and-engage/api-reference/post-statuses-unretweet-id"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'unretweet';
		addPathSegment: id , '.json'.
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	^ self executePOSTRequestWithURL: u
