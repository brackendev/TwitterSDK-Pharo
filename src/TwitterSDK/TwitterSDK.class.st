"
I am TwitterSDK, an object to interact with the Twitter API (version 1.1).

Example usage:

	twitter := TwitterSDK createWithConsumerKey: CONSUMER_KEY consumerSecret: CONSUMER_SECRET accessToken: ACCESS_TOKEN accessTokenSecret: TOKEN_SECRET.
	twitterSDK postPathSegment: 'friendships/create.json' parameters: (Dictionary newFrom: {'screen_name' -> 'brackendev'}).

"
Class {
	#name : #TwitterSDK,
	#superclass : #Object,
	#instVars : [
		'service',
		'accessToken',
		'userAccess'
	],
	#category : 'TwitterSDK'
}

{ #category : #public }
TwitterSDK class >> createWithConsumerKey: consumerKey consumerSecret: consumerSecret accessToken: aToken accessTokenSecret: aTokenSecret [
	"Do this before anything else"

	"Setup your app at https://apps.twitter.com/app/"

	| consumerData accessTokenDict userAccess service accessToken |
	consumerData := ZnOAuth1ConsumerData newForTwitterAuthentication.
	consumerData consumer: consumerKey.
	consumerData consumerSecret: consumerSecret.
	service := ZnOAuth1Service new.
	service providerAccount: consumerData.
	accessTokenDict := Dictionary new.
	accessTokenDict at: 'oauth_token' put: aToken.
	accessTokenDict at: 'oauth_token_secret' put: aTokenSecret.
	accessToken := ZnOAuth1Token newFromDictionary: accessTokenDict.
	userAccess := ZnOAuth1TwitterUserAccess new oauth1Service: service.
	userAccess accessToken: accessToken.
	^ self new
		service: service;
		userAccess: userAccess;
		accessToken: accessToken;
		yourself

]

{ #category : #private }
TwitterSDK class >> defaultAccessToken [
	"Private use"

	^ ZnOAuth1Token new

]

{ #category : #private }
TwitterSDK class >> defaultService [
	"Private use"

	^ ZnOAuth1Service new

]

{ #category : #private }
TwitterSDK class >> defaultUserAccess [
	"Private use"

	^ ZnOAuth1TwitterUserAccess new

]

{ #category : #'private - accessing' }
TwitterSDK >> accessToken [
	"Private use"

	^ accessToken ifNil: [ accessToken := self class defaultAccessToken ]

]

{ #category : #'private - accessing' }
TwitterSDK >> accessToken: aZnOAuth1Token [
	"Private use"

	accessToken := aZnOAuth1Token

]

{ #category : #private }
TwitterSDK >> executeGETRequestWithURL: url [
	"Private use"

	| response |
	response := self service executeRequest: (ZnRequest get: url) token: self accessToken.
	response isSuccess
		ifFalse: [ self error: 'GET failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents

]

{ #category : #private }
TwitterSDK >> executePOSTRequestWithURL: url [
	"Private use"

	| response |
	response := self service executeRequest: (ZnRequest post: url) token: self accessToken.
	response isSuccess
		ifFalse: [ self error: 'POST failed: ' , response contents printString ].
	^ NeoJSONReader fromString: response contents

]

{ #category : #public }
TwitterSDK >> getPathSegment: pathSegment parameters: parameters [
	| u |
	u := TwitterSDKZnUrl create.
	u addPathSegments: (pathSegment splitOn: '/').
	u queryAddAll: parameters.
	^ self executeGETRequestWithURL: u
]

{ #category : #public }
TwitterSDK >> postPathSegment: pathSegment parameters: parameters [
	| u |
	u := TwitterSDKZnUrl create.
	u addPathSegments: (pathSegment splitOn: '/').
	u queryAddAll: parameters.
	^ self executePOSTRequestWithURL: u
]

{ #category : #'private - accessing' }
TwitterSDK >> service [
	"Private use"
	
	^ service ifNil: [ service := self class defaultService ]

]

{ #category : #'private - accessing' }
TwitterSDK >> service: aZnOAuth1Service [
	"Private use"

	service := aZnOAuth1Service

]

{ #category : #'private - accessing' }
TwitterSDK >> userAccess [
	"Private use"

	^ userAccess ifNil: [ userAccess := self class defaultUserAccess ]

]

{ #category : #'private - accessing' }
TwitterSDK >> userAccess: aZnOAuth1TwitterUserAccess [
	"Private use"

	userAccess := aZnOAuth1TwitterUserAccess

]
