public
tweetIDForPicURL: aString twitterSDK: aTwitterSDK
	"https://pic.twitter.com/:id -> https://twitter.com/:screename/status/:id"

	| picID response statuses |
	picID := aString replaceRegEx: '^https?\:\/\/pic\.twitter\.com\/' with: ''.
	response := aTwitterSDK
		searchTweetsWithQuery: 'F8hsIIGRQR'
		geocode: nil
		lang: nil
		locale: nil
		resultType: nil
		count: nil
		until: nil
		sinceID: nil
		maxID: nil
		includeEntities: nil.
	statuses := response at: 'statuses'.
	statuses size > 0
		ifTrue: [ ^ (statuses at: 1) at: 'id' ]
		ifFalse: [ ^ nil ]
