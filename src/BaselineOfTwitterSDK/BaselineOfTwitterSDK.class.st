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
			baseline: 'ZincHTTPComponents'
          with: [ 
              spec
                className: 'BaselineOfZincHTTPComponents';
                loads: #('Core' 'REST' 'SSO' 'WebSocket');
                repository: 'github://GsDevKit/zinc:gs_master/repository' ] ]

]
