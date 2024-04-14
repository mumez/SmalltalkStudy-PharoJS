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

{ #category : #initialization }
SsExpressCounterApp >> initRoutes [
	server set: 'view engine' to: 'ejs'.
	server get: '/' handler: [ :req :res | self renderIndex: res ]
]

{ #category : #initialization }
SsExpressCounterApp >> initialize [
	super initialize.
	counter := PjCounter new.
	self initRoutes
]

{ #category : #rendering }
SsExpressCounterApp >> renderIndex: res [
	res render: 'pages/index'
]
