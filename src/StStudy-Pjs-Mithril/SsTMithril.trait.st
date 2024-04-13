Trait {
	#name : #SsTMithril,
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #'Mithril API' }
SsTMithril >> _m: selector attrs: attrs children: children [
	<javascript: 'return m(selector, attrs, children)'>

]

{ #category : #'Mithril API' }
SsTMithril >> m: selector attrs: attrs children: children [
	^ self _m: selector attrs: attrs asDictionary children: children

]

{ #category : #'Mithril API' }
SsTMithril >> render: element vnodes: vnodes [
	<javascript: 'm.render(element, vnodes)'>
]

{ #category : #'Mithril API' }
SsTMithril >> renderAt: elementId vnodes: vnodes [
	^ self render: (self elementAt: elementId) vnodes: vnodes
]
