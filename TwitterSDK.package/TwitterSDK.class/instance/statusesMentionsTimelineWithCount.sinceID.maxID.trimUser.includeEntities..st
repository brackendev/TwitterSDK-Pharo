Twitter statuses
statusesMentionsTimelineWithCount: count sinceID: sinceID maxID: maxID trimUser: trimUser includeEntities: includeEntities
	"https://dev.twitter.com/rest/reference/get/statuses/mentions_timeline"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'mentions_timeline.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	count ifNotNil: [ u queryAt: 'count' put: count ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	^ self executeGETRequestWithURL: u
