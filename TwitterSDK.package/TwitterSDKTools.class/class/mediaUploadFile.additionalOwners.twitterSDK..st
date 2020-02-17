public
mediaUploadFile: aFileName additionalOwners: additionalOwners twitterSDK: aTwitterSDK
	"https://developer.twitter.com/en/docs/media/upload-media/api-reference/post-media-upload"

	| u part request response |
	u := ZnUrl new
		scheme: #https;
		host: 'upload.twitter.com';
		addPathSegment: '1.1';
		addPathSegment: 'media';
		addPathSegment: 'upload.json'.
	additionalOwners
		ifNotNil: [ u queryAt: 'additional_owners' put: additionalOwners ].
	request := ZnRequest post: u.
	part := ZnMimePart fieldName: 'media' fileNamed: aFileName.
	request entity: (ZnMultiPartFormDataEntity new addPart: part).
	response := aTwitterSDK service
		executeRequest: request
		token: aTwitterSDK accessToken.
	response isSuccess
		ifFalse: [ aTwitterSDK error: 'POST failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents