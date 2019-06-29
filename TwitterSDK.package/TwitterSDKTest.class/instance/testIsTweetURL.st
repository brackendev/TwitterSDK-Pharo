tests-strings
testIsTweetURL
	self assert: 'http://twitter.com/brackendev/status/763742584380456960' isTweetURL equals: true.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960' isTweetURL equals: true.
	self
		assert: 'http://twitter.com/brackendev/status/763742584380456960/photo/1' isTweetURL
		equals: true.
	self
		assert: 'https://twitter.com/brackendev/status/763742584380456960/photo/1' isTweetURL
		equals: true.
	self assert: 'http://www.twitter.com/brackendev/status/763742584380456960' isTweetURL equals: true.
	self assert: 'https://www.twitter.com/brackendev/status/763742584380456960' isTweetURL equals: true.
	self
		assert: 'http://www.twitter.com/brackendev/status/763742584380456960/photo/1' isTweetURL
		equals: true.
	self
		assert: 'https://www.twitter.com/brackendev/status/763742584380456960/photo/1' isTweetURL
		equals: true.
	self assert: '@brackendev' isTweetURL equals: false.
	self assert: 'https://pharo.org/' isTweetURL equals: false.
	self assert: 'http://twitter.com/brackendev/status/763742584380456960 ' isTweetURL equals: false.
	self assert: ' https://twitter.com/brackendev/status/763742584380456960' isTweetURL equals: false
