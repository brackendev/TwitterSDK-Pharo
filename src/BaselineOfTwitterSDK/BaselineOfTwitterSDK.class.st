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
			baseline: 'SSO-OAuth1'
			with: [ spec
				loads: #('SSO-OAuth1');
				repository: 'github://svenvc/zinc/repository' ] ].

]
