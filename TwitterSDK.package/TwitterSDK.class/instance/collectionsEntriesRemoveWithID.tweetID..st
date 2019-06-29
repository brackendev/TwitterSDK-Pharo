Twitter collections
collectionsEntriesRemoveWithID: id tweetID: tweetID
	"https://dev.twitter.com/rest/reference/post/collections/entries/remove"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'entries';
		addPathSegment: 'remove.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	tweetID ifNotNil: [ u queryAt: 'tweet_id' put: tweetID ].
	^ self executePOSTRequestWithURL: u
