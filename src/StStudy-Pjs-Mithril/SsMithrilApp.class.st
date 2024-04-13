Class {
	#name : #SsMithrilApp,
	#superclass : #PjFileBasedWebApp,
	#instVars : [
		'counter'
	],
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #defaults }
SsMithrilApp class >> defaultAppFolderParent [
 	^ '.' asFileReference
]

{ #category : #'Mithril API' }
SsMithrilApp >> _m: selector attrs: attrs children: children [
	<javascript: 'return m(selector, attrs, children)'>

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

{ #category : #'Mithril API' }
SsMithrilApp >> m: selector attrs: attrs children: children [
	^ self _m: selector attrs: attrs asDictionary children: children

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

{ #category : #'Mithril API' }
SsMithrilApp >> render: element vnodes: vnodes [
	<javascript: 'm.render(element, vnodes)'>
]

{ #category : #'Mithril API' }
SsMithrilApp >> renderAt: elementId vnodes: vnodes [
	^ self render: (self elementAt: elementId) vnodes: vnodes
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
