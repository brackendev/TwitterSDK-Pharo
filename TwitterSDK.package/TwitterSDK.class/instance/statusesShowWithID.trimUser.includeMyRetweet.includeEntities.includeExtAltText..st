Twitter statuses
statusesShowWithID: id trimUser: trimUser includeMyRetweet: includeMyRetweet includeEntities: includeEntities includeExtAltText: includeExtAltText
	"https://dev.twitter.com/rest/reference/get/statuses/show/%3Aid"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'show.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	includeMyRetweet ifNotNil: [ u queryAt: 'include_my_retweet' put: includeMyRetweet ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	includeExtAltText ifNotNil: [ u queryAt: 'include_ext_alt_text' put: includeExtAltText ].
	^ self executeGETRequestWithURL: u
