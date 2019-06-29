Twitter help
helpLanguages
	"https://dev.twitter.com/rest/reference/get/help/languages"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'help';
				addPathSegment: 'languages.json')
