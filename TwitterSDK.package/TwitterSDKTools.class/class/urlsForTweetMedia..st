private
urlsForTweetMedia: tweetMedia
	| oc |
	oc := tweetMedia
		collect: [ :each | 
			(each includesKey: 'media_url')
				ifTrue: [ each at: 'media_url' ] ].
	^ oc
