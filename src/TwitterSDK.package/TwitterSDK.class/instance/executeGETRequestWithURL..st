private
executeGETRequestWithURL: url
	"Private use"

	| response |
	response := self service executeRequest: (ZnRequest get: url) token: self accessToken.
	response isSuccess
		ifFalse: [ self error: 'GET failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents
