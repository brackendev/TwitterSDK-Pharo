Twitter collections
collectionsEntriesWithID: id count: count maxPosition: maxPosition minPosition: minPosition
	"https://dev.twitter.com/rest/reference/get/collections/entries"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'collections';
		addPathSegment: 'entries.json'.
	id ifNotNil: [ u queryAt: 'id' put: id ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	maxPosition ifNotNil: [ u queryAt: 'max_position' put: maxPosition ].
	minPosition ifNotNil: [ u queryAt: 'min_position' put: minPosition ].
	^ self executeGETRequestWithURL: u
