Twitter friendships
friendshipsShowWithSourceID: sourceID sourceScreenName: sourceScreenName targetID: targetID targetScreenName: targetScreenName
	"https://dev.twitter.com/rest/reference/get/friendships/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'show.json'.
	sourceID ifNotNil: [ u queryAt: 'source_id' put: sourceID ].
	sourceScreenName
		ifNotNil: [ u queryAt: 'source_screen_name' put: sourceScreenName ].
	targetID
		ifNotNil: [ u queryAt: 'target_id' put: targetID ].
	targetScreenName
		ifNotNil: [ u queryAt: 'target_screen_name' put: targetScreenName ].
	^ self executeGETRequestWithURL: u
