Class {
	#name : #PWBFASTMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'pwbCharacterLiteral',
		'pwbFloatLiteral',
		'pwbIntegerLiteral',
		'pwbStringLiteral',
		'pwbReturnStatement',
		'pwbImplicitVariable',
		'fastReturnStatement',
		'fastEntity',
		'pwbDottedExpression',
		'pwbFunctionInvocation',
		'pwbAccess',
		'pwbExpression',
		'fastExpression',
		'pwbIdentifier',
		'pwbLiteral'
	],
	#category : #'PowerBuilder-Importer-Metamodels'
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

	pwbLiteral := builder newClassNamed: #Literal comment: 'A literal in PWB code'.
	pwbCharacterLiteral := builder newClassNamed: #CharacterLiteral comment: 'A character in PWB code'.
	pwbFloatLiteral := builder newClassNamed: #FloatLiteral comment: 'a Float Literal, ex: 12.3'.
	pwbIntegerLiteral := builder newClassNamed: #IntegerLiteral comment: 'An integer literal'.
	pwbStringLiteral := builder newClassNamed: #StringLiteral comment: 'A string in PWB'.

	pwbReturnStatement := builder newClassNamed: #ReturnStatement comment: 'Node representing a return statement in PWB'.

	pwbExpression  := builder newClassNamed: #Expression comment: 'Represents an expression, i.e. something that has a value (a literal, a variable, an arithmetic expression, a function call, ...)'.
	pwbImplicitVariable := builder newClassNamed: #ImplicitVariable comment: 'Represents the use of "this" in PowerBuilder'.
	pwbIdentifier := builder newClassNamed: #Identifier comment: 'Represents an idenfier (presumably a variable) used (i.e. accessed) in the source code'.
	pwbFunctionInvocation := builder newClassNamed: #FunctionInvocation comment: 'Represents an invocation (a call) of a PWB function'.
	pwbAccess:= builder newClassNamed: #Access comment: 'Represents access to a variable'.
	pwbDottedExpression  := builder newClassNamed: #DottedExpression comment: 'Represents an expression with dot: something.member.
Member can be an attribute access or a function invocation'.

	"Remotes from FAST"
	fastEntity := self remoteEntity: #Entity withPrefix: #FAST.
	fastExpression := self remoteEntity: #Expression withPrefix: #FAST.
	fastReturnStatement := self remoteEntity: #ReturnStatement withPrefix: #FAST.
]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.

	pwbExpression --|> fastExpression.
	
	pwbLiteral --|> pwbExpression.
	pwbCharacterLiteral --|> pwbLiteral.
	pwbFloatLiteral --|> pwbLiteral.
	pwbIntegerLiteral --|> pwbLiteral.
	pwbStringLiteral --|> pwbLiteral.

	pwbAccess --|> pwbExpression .
	pwbFunctionInvocation  --|> pwbExpression.
	pwbImplicitVariable --|> pwbExpression.
	pwbDottedExpression --|> pwbExpression.
	
	pwbImplicitVariable --|> pwbIdentifier.
	
	pwbReturnStatement --|> fastReturnStatement.

]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineProperties [
	super defineProperties.

	pwbIdentifier property: #name type: #String.
	
	pwbLiteral property: #value type: #String
]

{ #category : #definition }
PWBFASTMetamodelGenerator >> defineRelations [
	super defineRelations.
	
	((pwbExpression property: #parentExpression)
		comment: 'The parentExpression (if any) owning this Expression')
	-<>
	pwbExpression.

	((pwbDottedExpression property: #majorObject)
		comment: 'The object whose member is accessed (left side of the dottedExpression)')
		<>-
	(pwbExpression property: #parentExpression).

	((pwbDottedExpression property: #member)
		comment: 'The member accessed (right side of the dottedExpression)')
		<>-
	(pwbExpression property: #parentExpression).

	((pwbAccess property: #identifier)
		comment: 'The identifier of the accessed variable')
		<>-
	((pwbIdentifier property: #parentAccess)
		comment: 'The use of this identifier').

	((pwbFunctionInvocation property: #identifier)
		comment: 'The identifier of the invoked function')
		<>-
	(pwbIdentifier property: #parentExpression).

	((pwbFunctionInvocation property: #arguments)
		comment: 'The argument expressions of the invocation')
		<>-
	(pwbExpression property: #parentExpression).

]
