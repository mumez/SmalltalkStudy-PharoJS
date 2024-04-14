Class {
	#name : #SsExpressCounterApp,
	#superclass : #PjExpressApp,
	#instVars : [
		'counter'
	],
	#category : #'StStudy-Pjs-Express'
}

{ #category : #defaults }
SsExpressCounterApp class >> defaultAppFolderParent [
 	^ '.' asFileReference
]

{ #category : #accessing }
SsExpressCounterApp class >> npmPackageNames [
	<pharoJsSkip>
	^ super npmPackageNames, #( ejs )
]