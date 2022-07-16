Class {
	#name : #BaselineOfTwitterSDK,
	#superclass : #BaselineOf,
	#category : 'BaselineOfTwitterSDK'
}

{ #category : #baselines }
BaselineOfTwitterSDK >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'TwitterSDK'.
			spec
				project: 'ZincHTTPComponents'
				with: [ spec
						loads: #('SSO-OAuth1');
						repository: 'github://svenvc/zinc/repository' ] ]

]
