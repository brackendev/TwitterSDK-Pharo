Twitter media
mediaUploadFile: aFileName additionalOwners: additionalOwners
	"https://dev.twitter.com/rest/reference/post/media/upload"

	| u part request response |
	u := ZnUrl new
		scheme: #https;
		host: 'upload.twitter.com';
		addPathSegment: '1.1';
		addPathSegment: 'media';
		addPathSegment: 'upload.json'.
	additionalOwners ifNotNil: [ u queryAt: 'additional_owners' put: additionalOwners ].
	request := ZnRequest post: u.
	part := ZnMimePart fieldName: 'media' fileNamed: aFileName.
	request entity: (ZnMultiPartFormDataEntity new addPart: part).
	response := self service executeRequest: request token: self accessToken.
	response isSuccess
		ifFalse: [ self error: 'POST failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents
