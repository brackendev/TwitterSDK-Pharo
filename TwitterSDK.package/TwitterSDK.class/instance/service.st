private - accessing
service
	"Private use"
	
	^ service ifNil: [ service := self class defaultService ]
