Twitter statuses
statusesUpdateWithStatus: status inReplyToStatusID: inReplyToStatusID possiblySensitive: possiblySensitive lat: lat long: long placeID: placeID displayCoordinates: displayCoordinates trimUser: trimUser mediaIDs: mediaIDs enableDMCommands: enableDMCommands failDMCommands: failDMCommands
	"https://dev.twitter.com/docs/api/1.1/post/statuses/update"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'statuses';
		addPathSegment: 'update.json'.
	u queryAt: 'tweet_mode' put: 'extended'.
	status ifNotNil: [ u queryAt: 'status' put: status ].
	inReplyToStatusID ifNotNil: [ u queryAt: 'in_reply_to_status_id' put: inReplyToStatusID ].
	possiblySensitive ifNotNil: [ u queryAt: 'possibly_sensitive' put: possiblySensitive ].
	lat ifNotNil: [ u queryAt: 'lat' put: lat ].
	long ifNotNil: [ u queryAt: 'long' put: long ].
	placeID ifNotNil: [ u queryAt: 'place_id' put: placeID ].
	displayCoordinates ifNotNil: [ u queryAt: 'display_coordinates' put: displayCoordinates ].
	trimUser ifNotNil: [ u queryAt: 'trim_user' put: trimUser ].
	mediaIDs ifNotNil: [ u queryAt: 'media_ids' put: mediaIDs ].
	enableDMCommands ifNotNil: [ u queryAt: 'enable_dm_commands' put: enableDMCommands ].
	failDMCommands ifNotNil: [ u queryAt: 'fail_dm_commands' put: failDMCommands ].
	^ self executePOSTRequestWithURL: u
