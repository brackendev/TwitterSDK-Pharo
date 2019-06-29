Twitter account
accountUpdateProfileWithName: name url: url location: location description: description profileLinkColor: linkColor includeEntities: includeEntities skipStatus: skipStatus
	"https://dev.twitter.com/rest/reference/post/account/update_profile"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'update_profile.json'.
	name ifNotNil: [ u queryAt: 'name' put: name ].
	url ifNotNil: [ u queryAt: 'url' put: url ].
	location ifNotNil: [ u queryAt: 'location' put: location ].
	description ifNotNil: [ u queryAt: 'description' put: description ].
	linkColor ifNotNil: [ u queryAt: 'profile_link_color' put: linkColor ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	^ self executePOSTRequestWithURL: u
