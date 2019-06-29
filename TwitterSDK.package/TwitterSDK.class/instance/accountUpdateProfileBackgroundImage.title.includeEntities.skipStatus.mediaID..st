Twitter account
accountUpdateProfileBackgroundImage: image title: tile includeEntities: includeEntities skipStatus: skipStatus mediaID: mediaID
	"https://dev.twitter.com/rest/reference/post/account/update_profile_background_image"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'update_profile_image.json'.
	image ifNotNil: [ u queryAt: 'image' put: image ].	" TODO based on #mediaUploadFile:"
	tile ifNotNil: [ u queryAt: 'tile' put: tile ].
	includeEntities ifNotNil: [ u queryAt: 'include_entities' put: includeEntities ].
	skipStatus ifNotNil: [ u queryAt: 'skip_status' put: skipStatus ].
	mediaID ifNotNil: [ u queryAt: 'media_id' put: mediaID ].
	^ self executePOSTRequestWithURL: u
