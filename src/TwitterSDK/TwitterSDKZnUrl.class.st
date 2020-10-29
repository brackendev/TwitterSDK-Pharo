"
I am TwitterSDKZnUrl, a ZnUrl object to support the TwitterSDK object.

"
Class {
	#name : #TwitterSDKZnUrl,
	#superclass : #ZnUrl,
	#category : 'TwitterSDK'
}

{ #category : #private }
TwitterSDKZnUrl class >> create [
	"Private use"

	^ self new
		scheme: #https;
		host: 'api.twitter.com';
		addPathSegment: '1.1';
		yourself

]
