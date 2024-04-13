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
