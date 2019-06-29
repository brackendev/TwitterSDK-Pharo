Twitter account
accountSettings
	"https://dev.twitter.com/rest/reference/get/account/settings"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'account';
				addPathSegment: 'settings.json')
