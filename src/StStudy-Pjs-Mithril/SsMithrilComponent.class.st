Class {
	#name : #SsMithrilComponent,
	#superclass : #Object,
	#instVars : [
		'component'
	],
	#category : #'StStudy-Pjs-Mithril'
}

{ #category : #'instance creation' }
SsMithrilComponent class >> onView: aBlock [
	^ self new onView: aBlock onInit: nil onCreate: nil onBeforeUpdate: nil onUpdate: nil onBeforeRemove: nil onRemove: nil
]

{ #category : #'instance creation' }
SsMithrilComponent class >> onView: onView onInit: onInit [
	^ self onView: onView onInit: onInit onCreate: nil onBeforeUpdate: nil onUpdate: nil onBeforeRemove: nil onRemove: nil
]

{ #category : #'instance creation' }
SsMithrilComponent class >> onView: onView onInit: onInit onCreate: onCreate [
	^ self onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: nil onUpdate: nil onBeforeRemove: nil onRemove: nil
]

{ #category : #'instance creation' }
SsMithrilComponent class >> onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: onBeforeUpdate onUpdate: onUpdate onBeforeRemove: onBeforeRemove onRemove: onRemove [
	^ self onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: onBeforeUpdate onUpdate: onUpdate onBeforeRemove: onBeforeRemove onRemove: onRemove
]

{ #category : #'instance creation' }
SsMithrilComponent class >> onView: viewBlock onInit: initBlock onCreate: createBlock onUpdate: updateBlock onRemove: removeBlock [
	^ self onView: viewBlock onInit: initBlock onCreate: createBlock onBeforeUpdate: nil onUpdate: updateBlock onBeforeRemove: nil onRemove: removeBlock
]

{ #category : #utilities }
SsMithrilComponent >> _assignFunc: func named: name to: obj [
	<javascript: 'obj[name] = func; return obj'>
]

{ #category : #private }
SsMithrilComponent >> _onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: onBeforeUpdate onUpdate: onUpdate onBeforeRemove: onBeforeRemove onRemove: onRemove [
	<javascript: 'return {
        view:onView,
        oninit:onInit,
        oncreate:onCreate,
        onbeforeupdate:onBeforeUpdate,
        onupdate:onUpdate,
        onbeforeremove:onBeforeRemove,
        onremove:onRemove,
    };'>
]

{ #category : #accessing }
SsMithrilComponent >> component [
	^ component
]

{ #category : #actions }
SsMithrilComponent >> onBeforeRemove: aBlock [
	^ self _assignFunc: aBlock named: 'onbeforeremove' to: component
]

{ #category : #actions }
SsMithrilComponent >> onBeforeUpdate: aBlock [
	^ self _assignFunc: aBlock named: 'onbeforeupdate' to: component
]

{ #category : #actions }
SsMithrilComponent >> onCreate: aBlock [
	^ self _assignFunc: aBlock named: 'oncreate' to: component
]

{ #category : #actions }
SsMithrilComponent >> onInit: aBlock [
	^ self _assignFunc: aBlock named: 'oninit' to: component
]

{ #category : #actions }
SsMithrilComponent >> onRemove: aBlock [
	^ self _assignFunc: aBlock named: 'onremove' to: component
]

{ #category : #actions }
SsMithrilComponent >> onUpdate: aBlock [
	^ self _assignFunc: aBlock named: 'onupdate' to: component
]

{ #category : #actions }
SsMithrilComponent >> onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: onBeforeUpdate onUpdate: onUpdate onBeforeRemove: onBeforeRemove onRemove: onRemove [
	component := self _onView: onView onInit: onInit onCreate: onCreate onBeforeUpdate: onBeforeUpdate onUpdate: onUpdate onBeforeRemove: onBeforeRemove onRemove: onRemove.
	component.
	^ self
]
