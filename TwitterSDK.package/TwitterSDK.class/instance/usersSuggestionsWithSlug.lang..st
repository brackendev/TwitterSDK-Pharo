Twitter users
usersSuggestionsWithSlug: slug lang: lang
	"https://dev.twitter.com/rest/reference/get/users/suggestions/%3Aslug"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'users';
		addPathSegment: 'suggestions';
		addPathSegment: slug , '.json'.
	lang ifNotNil: [ u queryAt: 'lang' put: lang ].
	^ self executeGETRequestWithURL: u
