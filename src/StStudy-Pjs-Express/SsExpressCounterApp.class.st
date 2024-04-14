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
	server get: '/' handler: [ :req :res | self renderIndex: res ].
	server get: '/increment' handler: [ :req :res | 
		counter increment.
		self renderCounter: res ].
	server get: '/reset' handler: [ :req :res | 
		counter reset.
		self renderCounter: res ]
]

{ #category : #initialization }
SsExpressCounterApp >> initialize [
	super initialize.
	counter := PjCounter new.
	self initRoutes
]

{ #category : #rendering }
SsExpressCounterApp >> renderCounter: res [
	res render: 'partials/counter' with: {'counter' -> counter count} asDictionary
]

{ #category : #rendering }
SsExpressCounterApp >> renderIndex: res [
	res render: 'pages/index'
]
