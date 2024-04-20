Class {
	#name : #SsMithrilApp,
	#superclass : #PjFileBasedWebApp,
	#traits : 'SsTMithril',
	#classTraits : 'SsTMithril classTrait',
	#instVars : [
		'counter'
	],
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #defaults }
SsMithrilApp class >> defaultAppFolderParent [
	<pharoJsSkip>
	^ '.' asFileReference
]

{ #category : #accessing }
SsMithrilApp >> incrementButton [
	^ self elementAt: 'incrementButton'
]

{ #category : #initialization }
SsMithrilApp >> initialize [
	super initialize.
	counter := PjCounter new.
	self setup
]

{ #category : #rendering }
SsMithrilApp >> render [
	| style |
	style := counter count \\ 3 = 0
		         ifTrue: [ 'color:red' ]
		         ifFalse: [ 'color:gray' ].
	self renderAt: 'counter' vnodes: (self
			 m: 'div'
			 attrs: {
					 ('class' -> 'is-size-1').
					 ('style' -> style) }
			 children: counter count)
]

{ #category : #accessing }
SsMithrilApp >> resetButton [
	^ self elementAt: 'resetButton'
]

{ #category : #initialization }
SsMithrilApp >> setup [
	self resetButton addEventListener: #click block: [
		counter reset.
		self render ].
	self incrementButton addEventListener: #click block: [
		counter increment.
		self render ].
	self render
]
