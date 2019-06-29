Twitter statuses
statusesRetweetsOfMeWithCount: count sinceID: sinceID maxID: maxID trimUser: trimUser includeEntities: includeEntities includeUserEntities: includeUserEntities
	"https://dev.twitter.com/rest/reference/get/statuses/retweets_of_me"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'retweets_of_me.json'.
		u queryAt: 'tweet_mode' put: 'extended'.
	count ifNotNil: [ u queryAt: 'count' put: count ].
	sinceID ifNotNil: [ u queryAt: 'since_id' put: sinceID ].
	maxID ifNotNil: [ u queryAt: 'max_id' put: maxID ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	includeUserEntities ifNotNil: [ u queryAt: 'invlude_user_entities' put: includeUserEntities ].
	^ self executeGETRequestWithURL: u
