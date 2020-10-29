private - accessing
accessToken
	"Private use"

	^ accessToken ifNil: [ accessToken := self class defaultAccessToken ]
