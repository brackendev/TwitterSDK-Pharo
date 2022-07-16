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
		baseline: 'ZincHTTPComponents'
		with: [ spec
				loads: #('SSO');
				repository: 'github://svenvc/zinc:master/repository' ] ]

]
