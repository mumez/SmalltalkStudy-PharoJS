Trait {
	#name : #SsTMithril,
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #private }
SsTMithril >> _m: selector attrs: attrs [
	<javascript: 'return m(selector, attrs)'>
]

{ #category : #private }
SsTMithril >> _m: selector attrs: attrs children: children [
	<javascript: 'return m(selector, attrs, children)'>
]

{ #category : #'Mithril API' }
SsTMithril >> componentFrom: viewBlock [ 
	<javascript: 'return {view: viewBlock }'>
]

{ #category : #'component-support' }
SsTMithril >> componentOnView: viewBlock [
	| comp |
	comp := SsMithrilComponent onView: viewBlock.
	^ comp
]

{ #category : #'component-support' }
SsTMithril >> componentOnView: viewBlock customizing: customizerBlock [
	| comp |
	comp := SsMithrilComponent onView: viewBlock.
	customizerBlock value: comp.
	^ comp
]

{ #category : #logging }
SsTMithril >> logInfo: anObject [

	<javascript: 'console.dir(anObject)'>
	
]

{ #category : #'Mithril API' }
SsTMithril >> m: selector [
	<javascript: 'return m(selector)'>
]

{ #category : #'Mithril API' }
SsTMithril >> m: selector attrs: attrs [
	^self _m: selector attrs: attrs asDictionary
]

{ #category : #'Mithril API' }
SsTMithril >> m: selector attrs: attrs children: children [
	^self _m: selector attrs: attrs asDictionary children: children
]

{ #category : #'Mithril API' }
SsTMithril >> m: selector children: children [
	<javascript: 'return m(selector, children)'>
]

{ #category : #'component-support' }
SsTMithril >> mount: element component: aComponent [
	<javascript: 'return m.mount(element, aComponent)'>
]

{ #category : #'component-support' }
SsTMithril >> mountAt: elementId component: aComponent [
	^ self mount: (self elementAt: elementId) component: aComponent
]

{ #category : #'component-support' }
SsTMithril >> mountAt: elementId with: aComponentBuilder [
	^ self mount: (self elementAt: elementId) component: aComponentBuilder component
]

{ #category : #'component-support' }
SsTMithril >> newComponent: onView [
	<javascript: 'return {view:onView}'>
]

{ #category : #'Mithril API' }
SsTMithril >> redraw [
	<javascript: 'm.redraw()'>
]

{ #category : #'Mithril API' }
SsTMithril >> render: element vnodes: vnodes [
	<javascript: 'm.render(element, vnodes)'>
]

{ #category : #'Mithril API' }
SsTMithril >> renderAt: elementId vnodes: vnodes [
	^ self render: (self elementAt: elementId) vnodes: vnodes
]
