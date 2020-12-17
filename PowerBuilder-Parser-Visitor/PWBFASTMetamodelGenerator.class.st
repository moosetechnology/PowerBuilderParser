Class {
	#name : #PWBFASTMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'pwbCharacterLiteral',
		'pwbFieldAccess',
		'pwbFloatLiteral',
		'pwbIntegerLiteral',
		'pwbStringLiteral',
		'pwbReturnStatement',
		'pwbImplicitVariable',
		'fastReturnStatement',
		'fastLiteral',
		'fastCharacterLiteral',
		'fastStringLiteral',
		'fastEntity'
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

	pwbImplicitVariable := builder newClassNamed: #ImplicitVariable comment: 'Represents the use of "this" in PowerBuilder'.

	"Remotes from FAST"
	fastEntity := self remoteEntity: #Entity withPrefix: #FAST.
	fastCharacterLiteral := self remoteEntity: #CharacterLiteral withPrefix: #FAST.
	fastLiteral := self remoteEntity: #Literal withPrefix: #FAST.
	fastStringLiteral := self remoteEntity: #StringLiteral withPrefix: #FAST.
	fastReturnStatement := self remoteEntity: #ReturnStatement withPrefix: #FAST.
]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	
	
	pwbCharacterLiteral --|> fastCharacterLiteral.
	pwbFloatLiteral --|> fastLiteral.
	pwbIntegerLiteral --|> fastLiteral.
	pwbStringLiteral --|> fastStringLiteral.

	pwbReturnStatement --|> fastReturnStatement.
	pwbImplicitVariable --|> fastEntity
]
