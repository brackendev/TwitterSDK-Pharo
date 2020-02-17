public
getPathSegment: pathSegment parameters: parameters
	| u |
	u := TwitterSDKZnUrl create.
	u addPathSegments: (pathSegment splitOn: '/').
	u queryAddAll: parameters.
	^ self executeGETRequestWithURL: u