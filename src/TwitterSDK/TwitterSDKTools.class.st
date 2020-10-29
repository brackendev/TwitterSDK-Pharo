"
I am TwitterSDKTools, an object to interact with the Twitter API (version 1.1).

Example usage:

	twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: TOKEN_SECRET.
	TwitterSDKTools postTweet: twitter status: 'Test' image: 'test.jpg'. 

"
Class {
	#name : #TwitterSDKTools,
	#superclass : #Object,
	#category : 'TwitterSDK-Tools'
}

{ #category : #private }
TwitterSDKTools class >> entitiesForTweet: aTweet [
	^ (aTweet includesKey: 'extended_entities')
		ifTrue: [ aTweet at: 'extended_entities' ]
		ifFalse: [ (aTweet includesKey: 'entities')
				ifTrue: [ aTweet at: 'entities' ]
				ifFalse: [ nil ]
			]
]

{ #category : #private }
TwitterSDKTools class >> mediaForTweetEntities: tweetEntities [
	^ (tweetEntities includesKey: 'media')
		ifTrue:
			[ (tweetEntities at: 'media') ifEmpty: [ nil ] ]
		ifFalse: [ nil ]
]

{ #category : #public }
TwitterSDKTools class >> mediaURLsForTweet: aTweet [
	| entities media urls |
	entities := self entitiesForTweet: aTweet.
	(entities isNil or: [ entities isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	media := self mediaForTweetEntities: entities.
	(media isNil or: [ media isEmpty ])
		ifTrue: [ ^ OrderedCollection new ].
	urls := self urlsForTweetMedia: media.
	^ (urls isNil or: [ urls isEmpty ])
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ urls ]
]

{ #category : #public }
TwitterSDKTools class >> mediaURLsForTweetID: aString twitterSDK: aTwitterSDK [
	| tweet |
	tweet := self retrieveTweetForID: aString twitterSDK: aTwitterSDK.
	^ tweet
]

{ #category : #public }
TwitterSDKTools class >> mediaUploadFile: aFileName additionalOwners: additionalOwners twitterSDK: aTwitterSDK [
	"https://developer.twitter.com/en/docs/media/upload-media/api-reference/post-media-upload"

	| u part request response |
	u := ZnUrl new
		scheme: #https;
		host: 'upload.twitter.com';
		addPathSegment: '1.1';
		addPathSegment: 'media';
		addPathSegment: 'upload.json'.
	additionalOwners
		ifNotNil: [ u queryAt: 'additional_owners' put: additionalOwners ].
	request := ZnRequest post: u.
	part := ZnMimePart fieldName: 'media' fileNamed: aFileName.
	request entity: (ZnMultiPartFormDataEntity new addPart: part).
	response := aTwitterSDK service
		executeRequest: request
		token: aTwitterSDK accessToken.
	response isSuccess
		ifFalse: [ aTwitterSDK error: 'POST failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents
]

{ #category : #public }
TwitterSDKTools class >> postTweetStatus: aString image: aFileName twitterSDK: aTwitterSDK [
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
]

{ #category : #public }
TwitterSDKTools class >> retrieveTweetForID: aString twitterSDK: aTwitterSDK [
	| response |
	response := aTwitterSDK
		getPathSegment: 'statuses/lookup.json'
		parameters: (Dictionary newFrom: {('id' -> aString)}).
	^ (response isNil or: [ response isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ response last ]
]

{ #category : #private }
TwitterSDKTools class >> textForTweet: aTweet [
	^ (aTweet includesKey: 'full_text')
		ifTrue: [ aTweet at: 'full_text' ]
		ifFalse: [ ^ (aTweet includesKey: 'text')
				ifTrue: [ aTweet at: 'text' ]
				ifFalse: [ nil ]
			]
]

{ #category : #public }
TwitterSDKTools class >> textForTweetID: aString twitterSDK: aTwitterSDK [
	| tweet |
	tweet := self retrieveTweetForID: aString twitterSDK: aTwitterSDK.
	^ (tweet isNil or: [ tweet isEmpty ])
		ifTrue: [ nil ]
		ifFalse: [ self textForTweet: tweet ]
]

{ #category : #private }
TwitterSDKTools class >> urlsForTweetMedia: tweetMedia [
	| oc |
	oc := tweetMedia
		collect: [ :each | 
			(each includesKey: 'media_url')
				ifTrue: [ each at: 'media_url' ] ].
	^ oc

]
