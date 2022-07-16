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
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						loads: #('SSO');
						repository: 'http://mc.stfx.eu/ZincHTTPComponents' ] ]

]
