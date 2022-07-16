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
                className: 'BaselineOfZincHTTPComponents';
                loads: #('Core' 'REST' 'SSO');
                repository: 'github://GsDevKit/zinc:gs_master/repository' ] ]

]
