Twitter directMessages
directMessagesNewWithUserID: userID screenName: screenName text: text
	"https://dev.twitter.com/rest/reference/post/direct_messages/new"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'direct_messages';
		addPathSegment: 'new.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	text ifNotNil: [ u queryAt: 'text' put: text ].
	^ self executePOSTRequestWithURL: u
