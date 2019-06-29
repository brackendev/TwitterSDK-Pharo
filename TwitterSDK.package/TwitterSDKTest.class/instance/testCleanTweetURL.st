tests-strings
testCleanTweetURL
	self
		assert: 'http://twitter.com/brackendev/status/763742584380456960' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'https://twitter.com/brackendev/status/763742584380456960' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'http://twitter.com/brackendev/status/763742584380456960/photo/1' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'https://twitter.com/brackendev/status/763742584380456960/photo/1' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'http://www.twitter.com/brackendev/status/763742584380456960' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'https://www.twitter.com/brackendev/status/763742584380456960' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'http://www.twitter.com/brackendev/status/763742584380456960/photo/1' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self
		assert: 'https://www.twitter.com/brackendev/status/763742584380456960/photo/1' cleanTweetURL
		equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960' cleanTweetURL equals: 'https://twitter.com/brackendev/status/763742584380456960'.
	self assert: 'https://www.twitter.com/' cleanTweetURL equals: 'https://www.twitter.com/'.
	self assert: 'ABC' cleanTweetURL equals: 'ABC'.
	self assert: '' cleanTweetURL equals: ''
