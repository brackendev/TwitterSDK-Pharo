Twitter account
accountVerifyCredentialsWithEntities: includeEntities skipStatus: skipStatus includeEmail: includeEmail
	"https://dev.twitter.com/rest/reference/get/account/verify_credentials"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'verify_credentials.json'.
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	includeEmail ifNotNil: [ u queryAt: 'include_email' put: includeEmail ].
	^ self executeGETRequestWithURL: u
