Twitter help
helpTOS
	"https://dev.twitter.com/rest/reference/get/help/tos"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'help';
				addPathSegment: 'tos.json')
