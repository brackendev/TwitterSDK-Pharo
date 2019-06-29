Twitter users
usersReportSpamWithScreenName: screenName userID: userID performBlock: performBlock
	"https://dev.twitter.com/rest/reference/post/users/report_spam"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'report_spam.json'.
	screenName ifNotNil: [ u queryAt: 'screenname' put: screenName ].
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	performBlock ifNotNil: [ u queryAt: 'perform_block' put: performBlock ].
	^ self executePOSTRequestWithURL: u
