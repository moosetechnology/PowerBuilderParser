Class {
	#name : #FamixPWBTag,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBTTag',
	#classTraits : 'FamixPWBTTag classTrait',
	#classInstVars : [
		'#tags'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #adding }
FamixPWBTag class >> addTag: aFamixPWBTag [
	self pwbTags add: aFamixPWBTag
]

{ #category : #meta }
FamixPWBTag class >> annotation [

	<FMClass: #Tag super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBTag class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #accessing }
FamixPWBTag class >> pwbTags [
	tags
		ifNil: [ tags := OrderedCollection new.
			tags
				add:
					(self new
						name: 'Obsolette';
						color: Color red);
				add:
					(self new
						name: 'Not sure';
						color: Color yellow);
				add:
					(self new
						name: 'To be refactored';
						color: Color orange) ].
	^ tags
]

{ #category : #initialization }
FamixPWBTag class >> resetTags [
	<script>
	tags := nil
]

{ #category : #'as yet unclassified' }
FamixPWBTag class >> tagNamed: aString [
	^ self pwbTags detect: [ :tag | tag name = aString ]
]

{ #category : #testing }
FamixPWBTag >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBTag >> unsafeRemoveEntity: anObject [
	entities remove: anObject
]
