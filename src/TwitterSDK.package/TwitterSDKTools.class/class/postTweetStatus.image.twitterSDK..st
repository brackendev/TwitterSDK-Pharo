public
postTweetStatus: aString image: aFileName twitterSDK: aTwitterSDK
	| response mediaID |
	aFileName
		ifNotNil:
			[ response := self
				mediaUploadFile: aFileName
				additionalOwners: nil
				twitterSDK: aTwitterSDK.
			mediaID := (response at: 'media_id') asString
			].
	^ aTwitterSDK
		postPathSegment: 'statuses/update.json'
		parameters:
			(Dictionary
				newFrom:
					{('status' -> aString).
					('media_ids' -> mediaID)})