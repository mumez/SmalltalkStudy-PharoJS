Class {
	#name : #SsMithrilMountApp,
	#superclass : #SsMithrilApp,
	#traits : 'SsTMithril',
	#classTraits : 'SsTMithril classTrait',
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #rendering }
SsMithrilMountApp >> counterButtonsRenderer [
	^ self m: 'div' children: {
			  (self
				   m: 'button'
				   attrs: {
						   ('class' -> 'button is-danger').
						   ('onclick' -> [ counter reset ]) }
				   children: 'Reset').
			  (self
				   m: 'button'
				   attrs: {
						   ('class' -> 'button is-primary').
						   ('onclick' -> [ counter increment ]) }
				   children: 'Increment') }
]

{ #category : #rendering }
SsMithrilMountApp >> counterContainerRenderer [
	^ {
		  (self m: 'p' attrs: { ('class' -> 'title') } children: 'Counter').
		  (self m: 'p' attrs: { ('class' -> 'subtitle') } children: self counterValueRenderer).
		  self counterButtonsRenderer 
	}
]

{ #category : #rendering }
SsMithrilMountApp >> counterValueRenderer [
	| style |
	style := counter count \\ 3 = 0
		         ifTrue: [ 'color:red' ]
		         ifFalse: [ 'color:gray' ].
	^ self
		  m: 'div'
		  attrs: {
				  ('class' -> 'is-size-1').
				  ('style' -> style) }
		  children: counter count
]

{ #category : #'initialize-release' }
SsMithrilMountApp >> setup [
	|comp|
	comp := (self componentOnView: [  
			self m: 'div' attrs: { ('class' -> 'container') } children: self counterContainerRenderer
	]).
	comp onInit: [self logInfo: '**Counter component initialized**'].
	self mountAt: 'counter-container' with: comp
]
