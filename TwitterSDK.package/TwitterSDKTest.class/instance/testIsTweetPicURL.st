tests-strings
testIsTweetPicURL
	self assert: 'http://pic.twitter.com/abc123' isTweetPicURL equals: true.
	self assert: 'https://pic.twitter.com/abc123' isTweetPicURL equals: true.
	self assert: 'http://pic.twitter.com/' isTweetPicURL equals: false.
	self assert: 'https://pic.twitter.com' isTweetPicURL equals: false.
	self assert: '@brackendev' isTweetPicURL equals: false.
	self assert: 'https://pharo.org/' isTweetPicURL equals: false.
	self assert: 'http://twitter.com/brackendev/status/763742584380456960' isTweetPicURL equals: false.
