Twitter users
usersProfileBannerWithUserID: userID screenName: screenName
	"https://dev.twitter.com/rest/reference/get/users/profile_banner"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'lookup.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	^ self executeGETRequestWithURL: u
