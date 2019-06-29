Twitter users
usersSuggestionsMembersWithSlug: slug
	"https://dev.twitter.com/rest/reference/get/users/suggestions/%3Aslug"

	^self
		executeGETRequestWithURL:
			(TwitterSDKZnUrl create
				addPathSegment: 'users';
				addPathSegment: 'suggestions';
				addPathSegment: slug , '.json';
				addPathSegment: 'members.json')
