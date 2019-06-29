*TwitterSDK
cleanTweetURL
	self isTweetURL
		ifTrue: [ ^ 'https://twitter.com/',self tweetUserName ,'/status/', self tweetID  ].
	^ self
