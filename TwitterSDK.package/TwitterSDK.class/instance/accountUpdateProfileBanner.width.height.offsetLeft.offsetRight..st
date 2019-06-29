Twitter account
accountUpdateProfileBanner: image width: width height: height offsetLeft: offsetLeft offsetRight: offsetRight
	"https://dev.twitter.com/rest/reference/post/account/update_profile_banner"

	| u |
	u := TwitterSDKZnUrl create
		addPathSegment: 'account';
		addPathSegment: 'update_profile_banner.json'.
	image ifNotNil: [ u queryAt: 'banner' put: image ]. " TODO based on #mediaUploadFile:"
	width ifNotNil: [ u queryAt: 'width' put: width ].
	height ifNotNil: [ u queryAt: 'height' put: height ].
	offsetLeft ifNotNil: [ u queryAt: 'offset_left' put: offsetLeft ].
	offsetRight ifNotNil: [ u queryAt: 'offset_right' put: offsetRight ].
	^ self executePOSTRequestWithURL: u
