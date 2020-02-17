public
postPathSegment: pathSegment parameters: parameters
	| u |
	u := TwitterSDKZnUrl create.
	u addPathSegments: (pathSegment splitOn: '/').
	u queryAddAll: parameters.
	^ self executePOSTRequestWithURL: u