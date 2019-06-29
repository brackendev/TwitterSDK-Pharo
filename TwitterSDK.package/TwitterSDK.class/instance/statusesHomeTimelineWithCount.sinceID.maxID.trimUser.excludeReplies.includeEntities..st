Twitter statuses
statusesHomeTimelineWithCount: count sinceID: sinceID maxID: maxID trimUser: trimUser excludeReplies: excludeReplies includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/statuses/home_timeline"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'home_timeline.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	count ifNotNil: [ u queryAt: 'count' put: count ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	excludeReplies ifNotNil: [ u queryAt: 'exclude_replies' put: excludeReplies ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
