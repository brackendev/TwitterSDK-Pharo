tests-strings
testTweetID
	self assert: 'http://twitter.com/brackendev/status/763742584380456960' tweetID equals: '763742584380456960'.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960' tweetID equals: '763742584380456960'.
	self assert: 'http://twitter.com/brackendev/status/763742584380456960/photo/1' tweetID equals: '763742584380456960'.
	self assert: 'https://twitter.com/brackendev/status/763742584380456960/photo/1' tweetID equals: '763742584380456960'.
	self assert: 'http://www.twitter.com/brackendev/status/763742584380456960' tweetID equals: '763742584380456960'.
	self assert: 'https://www.twitter.com/brackendev/status/763742584380456960' tweetID equals: '763742584380456960'.
	self assert: 'http://www.twitter.com/brackendev/status/763742584380456960/photo/1' tweetID equals: '763742584380456960'.
	self assert: 'https://www.twitter.com/brackendev/status/763742584380456960/photo/1' tweetID equals: '763742584380456960'.
	self assert: '@brackendev' tweetID equals: nil.
	self assert: 'https://pharo.org/' tweetID equals: nil
