Twitter help
helpPrivacy
	"https://dev.twitter.com/rest/reference/get/help/privacy"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'help';
				addPathSegment: 'privacy.json')
