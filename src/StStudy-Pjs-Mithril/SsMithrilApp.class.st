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
