tests-strings
testIsTweetTitle
	self assert: 'brackendev on Twitter: "Says something"' isTweetTitle equals: true.
	self assert: '"Says something"' isTweetTitle equals: false.
	self assert: '@brackendev' isTweetTitle equals: false.
	self assert: 'https://pharo.org/' isTweetTitle equals: false.
	self assert: 'http://twitter.com/brackendev/status/763742584380456960' isTweetTitle equals: false.
