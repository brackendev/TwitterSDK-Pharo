public
textForTweetID: aString twitterSDK: aTwitterSDK
	| tweet |
	tweet := self retrieveTweetForID: aString twitterSDK: aTwitterSDK.
	^ (tweet isNil or: [ tweet isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ self textForTweet: tweet ]