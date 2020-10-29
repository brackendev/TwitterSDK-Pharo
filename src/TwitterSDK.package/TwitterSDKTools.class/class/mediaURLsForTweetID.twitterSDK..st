public
mediaURLsForTweetID: aString twitterSDK: aTwitterSDK
	| tweet |
	tweet := self retrieveTweetForID: aString twitterSDK: aTwitterSDK.
	^ tweet