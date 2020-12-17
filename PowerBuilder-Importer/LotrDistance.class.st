"
Represents a measure of distance between two start/end positions

Stores the delta in the start positions of the two considered entities
Also stores the delta in the end positions

The exact distance is not computed as a number, but one can compare distances between themselves
The order among the distances is not total (therefore it is a partial order !)
"
Class {
	#name : #LotrDistance,
	#superclass : #Object,
	#instVars : [
		'deltaStart',
		'deltaEnd'
	],
	#category : #'PowerBuilder-Importer-Importers'
}

{ #category : #'instance creation' }
LotrDistance class >> deltaStart: deltaStart deltaEnd: deltaEnd [
	^self new
		deltaStart: deltaStart ;
		deltaEnd: deltaEnd ;
		yourself
]

{ #category : #comparing }
LotrDistance >> < otherLotrDistance [
	"if there is a delta in start positions, we would prefer there be the same delta in the end positions, i.e. they are both the same length.
	In that case, take the one with smallest delta (in absolute value)"
	(deltaEnd - deltaStart) = (otherLotrDistance deltaEnd - otherLotrDistance deltaStart)
		ifTrue: [ ^ deltaStart abs < otherLotrDistance deltaStart abs ].

	"otherwise it is guess work: consider smallest cumulated deltas"
	^ (deltaStart abs + deltaEnd abs) < (otherLotrDistance deltaStart abs + otherLotrDistance deltaEnd abs)

]

{ #category : #comparing }
LotrDistance >> <= otherLotrDistance [
	^(otherLotrDistance < self) not
]

{ #category : #comparing }
LotrDistance >> = otherLotrDistance [
	^ (deltaStart = otherLotrDistance deltaStart) and: [ deltaEnd = otherLotrDistance deltaEnd ]

]

{ #category : #comparing }
LotrDistance >> > otherLotrDistance [
	^otherLotrDistance < self
]

{ #category : #comparing }
LotrDistance >> >= otherLotrDistance [
	^(self < otherLotrDistance) not
]

{ #category : #accessing }
LotrDistance >> deltaEnd [
	^deltaEnd
]

{ #category : #accessing }
LotrDistance >> deltaEnd: anObject [
	deltaEnd := anObject
]

{ #category : #accessing }
LotrDistance >> deltaStart [
	^deltaStart
]

{ #category : #accessing }
LotrDistance >> deltaStart: anObject [
	deltaStart := anObject
]
