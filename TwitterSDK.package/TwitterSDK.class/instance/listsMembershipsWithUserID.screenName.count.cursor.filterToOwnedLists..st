Twitter lists
listsMembershipsWithUserID: userID screenName: screenName count: count cursor: cursor filterToOwnedLists: filterToOwnedLists
	"https://dev.twitter.com/rest/reference/get/lists/memberships"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'lists';
		addPathSegment: 'memberships.json'.
	userID ifNotNil: [ u queryAt: 'user_id' put: userID ].
	screenName ifNotNil: [ u queryAt: 'screen_name' put: screenName ].
	count ifNotNil: [ u queryAt: 'count' put: count ].
	cursor ifNotNil: [ u queryAt: 'cursor' put: cursor ].
	filterToOwnedLists ifNotNil: [ u queryAt: 'filter_to_owned_lists' put: filterToOwnedLists ].
	^ self executeGETRequestWithURL: u
