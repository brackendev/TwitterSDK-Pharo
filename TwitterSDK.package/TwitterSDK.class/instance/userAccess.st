private - accessing
userAccess
	"Private use"

	^ userAccess ifNil: [ userAccess := self class defaultUserAccess ]
