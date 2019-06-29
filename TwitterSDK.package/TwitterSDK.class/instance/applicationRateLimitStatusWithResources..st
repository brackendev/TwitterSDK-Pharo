Twitter application
applicationRateLimitStatusWithResources: resources
	"https://dev.twitter.com/rest/reference/get/application/rate_limit_status"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'application';
		addPathSegment: 'rate_limit_status.json'.
	resources ifNotNil: [ u queryAt: 'resources' put: resources ].
	^ self executeGETRequestWithURL: u
