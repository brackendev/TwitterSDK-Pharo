Twitter statuses
statusesDestroyWithID: id trimUser: trimUser
	"https://dev.twitter.com/rest/reference/post/statuses/destroy/%3Aid"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'destroy';
		addPathSegment: id , '.json'.
	trimUser ifNotNil: [ u queryAt: 'trim_ser' put: trimUser ].
	^ self executePOSTRequestWithURL: u
