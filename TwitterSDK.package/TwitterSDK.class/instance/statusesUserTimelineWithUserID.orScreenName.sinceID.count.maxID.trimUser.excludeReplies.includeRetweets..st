Twitter statuses
statusesUserTimelineWithUserID: userID orScreenName: screenName sinceID: sinceID count: count maxID: maxID trimUser: trimUser excludeReplies: excludeReplies includeRetweets: includeRetweets
	"https://dev.twitter.com/rest/reference/get/statuses/user_timeline"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'user_timeline.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	excludeReplies ifNotNil: [ u queryAt: 'exclude_replies' put: excludeReplies ].
	includeRetweets ifNotNil: [ u queryAt: 'include_rts' put: includeRetweets asString ].
	^ self executeGETRequestWithURL: u
