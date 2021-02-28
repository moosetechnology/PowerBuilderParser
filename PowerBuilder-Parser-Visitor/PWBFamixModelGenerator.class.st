Class {
	#name : #PWBFamixModelGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'graphicComponent',
		'event',
		'sqlQuery',
		'subRoutine',
		'variable',
		'dataWindow',
		'attribute',
		'invocation',
		'userObject',
		'trigger',
		'abstractType',
		'customType',
		'basicType',
		'access',
		'behavioral',
		'variableAccess',
		'window',
		'majorObject',
		'menuObject',
		'application',
		'library',
		'reference',
		'tNamed',
		'tWithMethods',
		'sharedVariable',
		'localVariable',
		'parameter',
		'globalVariable',
		'instanceVariable',
		'argument',
		'functionReturn',
		'behaviorSignature',
		'routine',
		'function',
		'globalFunction',
		'structure',
		'query'
	],
	#classInstVars : [
		'builder'
	],
	#category : #'PowerBuilder-Parser-Visitor-importers'
}

{ #category : #accessing }
PWBFamixModelGenerator class >> generateMe [
	<script>
	self generate
]

{ #category : #accessing }
PWBFamixModelGenerator class >> packageName [

	^ #'Famix-PowerBuilder-Entities'
]

{ #category : #accessing }
PWBFamixModelGenerator class >> prefix [

	^ #'FamixPWB'
]

{ #category : #definition }
PWBFamixModelGenerator >> defineClasses [
	super defineClasses.
	library := builder newClassNamed: #Library.
	graphicComponent := builder newClassNamed: #GraphicComponent.
	behavioral := builder newClassNamed: #Behavioral.
	event := builder newClassNamed: #Event.
	routine := builder newClassNamed: #Routine.
	sqlQuery := builder newClassNamed: #SqlQuery.
	subRoutine := builder newClassNamed: #SubRoutine.
	variable := builder newClassNamed: #Variable.
	attribute := builder newClassNamed: #Attribute.
	parameter := builder newClassNamed: #Parameter.
	sharedVariable := builder newClassNamed: #SharedVariable.
	localVariable := builder newClassNamed: #LocalVariable.
	globalVariable := builder newClassNamed: #GlobalVariable.
	instanceVariable := builder newClassNamed: #InstanceVariable.
	function := builder newClassNamed: #Function.
	trigger := builder newClassNamed: #Trigger.
	argument := builder newClassNamed: #Argument.
	functionReturn := builder newClassNamed: #FunctionReturn.

	"Major objects"
	majorObject := builder newClassNamed: #majorObject.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	window := builder newClassNamed: #Window.
	structure := builder newClassNamed: #Structure.
	globalFunction := builder newClassNamed: #GlobalFunction.
	menuObject := builder newClassNamed: #MenuObject.
	application := builder newClassNamed: #Application.
	query := builder newClassNamed: #Query.
	behaviorSignature := builder newClassNamed: #BehaviorSignature.
	"Type"
	abstractType := builder newTraitNamed: #AbstractType.
	customType := builder newClassNamed: #CustomType.
	basicType := builder newClassNamed: #BasicType.

	"Association"
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	variableAccess := builder newClassNamed: #VariableAccess.
	reference := builder newClassNamed: #Reference
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchy [
	super defineHierarchy.
	library
		--|> #TNamedEntity.

	"behaviorals"
	behavioral
		--|> #TNamedEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences.
	graphicComponent
		--|> #TWithAttributes;
		--|> behavioral.
	routine
		--|> behavioral ;
		--|> #THasSignature ;
		--|> #TWithImplicitVariables ;
		--|> #TWithLocalVariables ;
		--|> #TInvocable ;
		--|> #TWithParameters.
	function
		--|> routine ;
		--|> #TTypedEntity .
	event
		--|> routine.
	trigger
		--|> #TWithAttributes ;
		--|> routine .
	subRoutine
		--|> routine .

	"structural entities (valueHodlers)"
	variable
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible.
	parameter --|> variable .
	sharedVariable --|> variable.
	globalVariable --|> variable.
	localVariable --|> #TLocalVariable.
	attribute --|> variable.

	"associations"
	invocation
		--|> #TInvocation ;
		--|> #THasSignature;
		--|> #TSourceEntity.
	access
		--|> #TSourceEntity;
		--|> #TAccess.
	reference
		--|> #TSourceEntity;
		--|> #TReference.

	"Major objects"
	abstractType --|> #TType .
	customType --|> abstractType.
	basicType --|> abstractType.
	majorObject
		--|> #TNamedEntity ;
		--|> #TWithAttributes ;
		--|> #TWithAccesses ;
		--|> #TWithMethods ;
		--|> #TWithFunctions ;
		--|> #TWithReferences.
	userObject
		--|> majorObject ;
		--|> abstractType ;
		--|> #TWithInvocations.
	window
		--|> majorObject ;
		--|> #TWithInvocations.
	dataWindow
		--|> majorObject ;
		--|> #TWithInvocations ;
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes.
	structure --|> majorObject.
	globalFunction
		--|> majorObject;
		--|> #TWithInvocations.
	menuObject --|> majorObject.
	application --|> majorObject.
	query --|> majorObject.

]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	super defineRelations.

	((localVariable property: #parentBehaviouralEntity) container)
		*-
	(behavioral property: #localVariables).

	((parameter property: #parentBehaviouralEntity) container)
		*-
	(routine property: #parameters).

	((attribute property: #parentType) container)
		*-
	(majorObject property: #attributes).

	((routine property: #parentType) container)
		*-
	(majorObject property: #methods).
]

{ #category : #definition }
PWBFamixModelGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
