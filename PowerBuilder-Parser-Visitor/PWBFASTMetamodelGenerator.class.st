Class {
	#name : #PWBFASTMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'entity',
		'characterLiteral',
		'literal',
		'stringLiteral',
		'returnStatement',
		'pwbCharacterLiteral',
		'pwbFieldAccess',
		'pwbFloatLiteral',
		'pwbIntegerLiteral',
		'pwbStringLiteral',
		'pwbReturnStatement'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
PWBFASTMetamodelGenerator class >> generateMe [
	<script>
	self generate
]

{ #category : #accessing }
PWBFASTMetamodelGenerator class >> packageName [

	^ #'FAST-PowerBuilder-Entities'
]

{ #category : #accessing }
PWBFASTMetamodelGenerator class >> prefix [
	^ #FASTPWB
]

{ #category : #accessing }
PWBFASTMetamodelGenerator class >> submetamodels [
	^ { FASTMetamodelGenerator }
]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineClasses [
	super defineClasses.

	pwbCharacterLiteral := builder newClassNamed: #CharacterLiteral comment: 'A character in PWB code'.
	pwbFieldAccess := builder newClassNamed: #FieldAccess comment: 'An access to an instance variable (field)'.
	pwbFloatLiteral := builder newClassNamed: #FloatLiteral comment: 'a Float Literal, ex: 12.3'.
	pwbIntegerLiteral := builder newClassNamed: #IntegerLiteral comment: 'An integer literal'.
	pwbStringLiteral := builder newClassNamed: #StringLiteral comment: 'A string in PWB'.

	pwbReturnStatement := builder newClassNamed: #ReturnStatement comment: 'Node representing a return statement in PWB'.

	"Remotes from FAST"
	entity := self remoteEntity: #Entity withPrefix: #FAST. 
	characterLiteral := self remoteEntity: #CharacterLiteral withPrefix: #FAST.
	literal := self remoteEntity: #Literal withPrefix: #FAST.
	stringLiteral := self remoteEntity: #StringLiteral withPrefix: #FAST.
	returnStatement := self remoteEntity: #ReturnStatement withPrefix: #FAST.
]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	
	
	pwbCharacterLiteral --|> characterLiteral.
	pwbFloatLiteral --|> literal.
	pwbIntegerLiteral --|> literal.
	pwbStringLiteral --|> stringLiteral.

	pwbReturnStatement --|> returnStatement
]
