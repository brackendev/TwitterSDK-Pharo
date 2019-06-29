private
executePOSTRequestWithURL: url
	"Private use"

	| response |
	response := self service executeRequest: (ZnRequest post: url) token: self accessToken.
	response isSuccess
		ifFalse: [ self error: 'POST failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents
