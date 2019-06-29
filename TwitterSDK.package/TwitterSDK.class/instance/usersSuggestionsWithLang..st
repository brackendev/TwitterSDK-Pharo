Twitter users
usersSuggestionsWithLang: lang
	"https://dev.twitter.com/rest/reference/get/users/suggestions"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'suggestions.json'.
	lang ifNotNil: [ u queryAt: 'lang' put: lang ].
	^ self executeGETRequestWithURL: u
