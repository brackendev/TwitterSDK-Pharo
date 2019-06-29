Twitter friendships
friendshipsNoRetweetsWithStringifyIDs: stringifyIDs
	"https://dev.twitter.com/rest/reference/get/friendships/no_retweets/ids"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'friendships';
		addPathSegment: 'no_retweets';
		addPathSegment: 'ids.json'.
	stringifyIDs ifNotNil: [ u queryAt: 'stringify_ids' put: stringifyIDs ].
	^ self executeGETRequestWithURL: u
