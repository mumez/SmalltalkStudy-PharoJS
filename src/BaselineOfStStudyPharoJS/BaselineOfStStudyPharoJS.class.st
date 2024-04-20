Class {
	#name : #BaselineOfStStudyPharoJS,
	#superclass : #BaselineOf,
	#category : #BaselineOfStStudyPharoJS
}

{ #category : #baseline }
BaselineOfStStudyPharoJS >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self
				declarePharoJSOn: spec.

			spec
				package: 'StStudy-Pjs-Express';
				package: 'StStudy-Pjs-Mithril'.
 ]
]

{ #category : #'external projects' }
BaselineOfStStudyPharoJS >> declarePharoJSOn: spec [
	spec
		baseline: 'PharoJS'
		with: [ spec repository: 'github://PharoJS/PharoJS:pharo11' ]
]
