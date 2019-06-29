Twitter help
helpConfiguration
	"https://dev.twitter.com/rest/reference/get/help/configuration"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'help';
				addPathSegment: 'configuration.json')
