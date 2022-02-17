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
				project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: '2.7.1';
					loads: #('SSO' );
					repository: 'http://mc.stfx.eu/ZincHTTPComponents' ] ]

]
