Twitter directMessages
directMessagesShowWithID: id
	"https://dev.twitter.com/rest/reference/get/direct_messages/show"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'direct_messages';
		addPathSegment: 'show.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	^ self executeGETRequestWithURL: u
