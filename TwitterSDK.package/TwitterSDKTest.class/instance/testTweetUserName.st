tests-strings
testTweetUserName
	self assert: 'http://twitter.com/brackendev/status/763742584380456960' tweetUserName equals: 'brackendev'.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960' tweetUserName equals: 'brackendev'.
	self assert: 'http://twitter.com/brackendev/status/763742584380456960/photo/1' tweetUserName equals: 'brackendev'.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960/photo/1' tweetUserName equals: 'brackendev'.
	self assert: 'http://www.twitter.com/brackendev/status/763742584380456960' tweetUserName equals: 'brackendev'.
	self assert: 'https://www.twitter.com/brackendev/status/763742584380456960' tweetUserName equals: 'brackendev'.
	self assert: 'http://www.twitter.com/brackendev/status/763742584380456960/photo/1' tweetUserName equals: 'brackendev'.
	self assert: 'https://www.twitter.com/brackendev/status/763742584380456960/photo/1' tweetUserName equals: 'brackendev'.
	self assert: '@brackendev' tweetID equals: nil.
	self assert: 'https://pharo.org/' tweetID equals: nil
