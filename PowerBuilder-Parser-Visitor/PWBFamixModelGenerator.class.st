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
	tNamed --|> #TNamedEntity.
	tWithMethods --|> #TWithMethods.
	library
		--|> #TNamedEntity;
		--|> #TSourceEntity.

	"behaviorals"
	behavioral
		--|> #TSourceEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences.
	graphicComponent
		--|> #TWithAttributes;
		--|> behavioral.
	routine
		--|> behavioral ;
		--|> #TNamedEntity ;
		--|> #THasSignature ;
		--|> #TTypedEntity ;
		--|> #TWithParameters.
	function
		--|> #TMethod ";
		--|> behavioral" .
	event
		--|> #TSourceEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences ;
		--|> #TMethod;
		--|> #TInvocable;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	trigger
		--|> #TWithAttributes;
		--|> behavioral;
		--|> #TMethod;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	subRoutine
		--|> behavioral;
		--|> #TMethod;
		--|> #TInvocable;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).

	"structural entities (valueHodlers)"
	variable
		--|> #TStructuralEntity .
"		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible."
	parameter
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute.
	sharedVariable --|> attribute.
	globalVariable --|> attribute.
	localVariable --|> #TLocalVariable.
	instanceVariable --|> attribute.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible.
	parameter --|> #TParameter.

	"associations"
	invocation --|> #TInvocation.
	invocation
		--|> #THasSignature;
		--|> #TSourceEntity.
	access
		--|> #TSourceEntity;
		--|> #TAccess.
	variableAccess
		--|> #TSourceEntity;
		--|> #TAccess.
	reference
		--|> #TSourceEntity;
		--|> #TReference.

	"Major objects"
	majorObject
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes;
		--|> #TWithAccesses;
		inheritsFromTrait: tWithMethods without: #(#numberOfLinesOfCode);
		--|> #TWithFunctions;
		--|> #TWithReferences.
	userObject
		--|> majorObject ;
		--|> abstractType ;
		--|> #TWithInvocations.
	window --|> majorObject.
	window --|> #TWithInvocations.
	dataWindow
		--|> majorObject ;
		--|> #TWithInvocations ;
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes.
	structure --|> majorObject.
	globalFunction
		--|> majorObject;
		--|> #TWithInvocations;
		--|> abstractType.
	menuObject --|> majorObject.
	application --|> majorObject.
	query --|> majorObject.
	abstractType
		inheritsFromTrait: tNamed without: #(#mooseNameOn:) ;
		--|> #TType ;
		--|> #TReferenceable.
	customType --|> abstractType.
	basicType --|> abstractType.

	"to remove"
	argument
		--|> tNamed;
		--|> #TSourceEntity.
	functionReturn
		--|> #TSourceEntity;
		--|> tNamed.
	behaviorSignature
		--|> #TSourceEntity;
		--|> tNamed
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchyNew [
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
	parameter
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute.
	sharedVariable --|> attribute.
	globalVariable --|> attribute.
	localVariable --|> #TLocalVariable.
	instanceVariable --|> attribute.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible.
	parameter --|> #TParameter.

	"associations"
	invocation --|> #TInvocation.
	invocation
		--|> #THasSignature;
		--|> #TSourceEntity.
	access
		--|> #TSourceEntity;
		--|> #TAccess.
	variableAccess
		--|> #TSourceEntity;
		--|> #TAccess.
	reference
		--|> #TSourceEntity;
		--|> #TReference.

	"Major objects"
	majorObject
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes;
		--|> #TWithAccesses;
		inheritsFromTrait: tWithMethods without: #(#numberOfLinesOfCode);
		--|> #TWithFunctions;
		--|> #TWithReferences.
	userObject
		--|> majorObject ;
		--|> abstractType ;
		--|> #TWithInvocations.
	window --|> majorObject.
	window --|> #TWithInvocations.
	dataWindow
		--|> majorObject ;
		--|> #TWithInvocations ;
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes.
	structure --|> majorObject.
	globalFunction
		--|> majorObject;
		--|> #TWithInvocations;
		--|> abstractType.
	menuObject --|> majorObject.
	application --|> majorObject.
	query --|> majorObject.
	abstractType
		inheritsFromTrait: tNamed without: #(#mooseNameOn:) ;
		--|> #TType ;
		--|> #TReferenceable.
	customType --|> abstractType.
	basicType --|> abstractType.

	"to remove"
	argument
		--|> tNamed;
		--|> #TSourceEntity.
	functionReturn
		--|> #TSourceEntity;
		--|> tNamed.
	behaviorSignature
		--|> #TSourceEntity;
		--|> tNamed
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchyOld [
	super defineHierarchy.
	tNamed --|> #TNamedEntity.
	tWithMethods --|> #TWithMethods.
	library
		--|> #TNamedEntity;
		--|> #TSourceEntity.

	"behaviorals"
	behavioral
		--|> #TSourceEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences.
	graphicComponent
		--|> #TWithAttributes;
		--|> behavioral.
	routine
		--|> behavioral ;
		--|> #TNamedEntity ;
		--|> #THasSignature ;
		--|> #TTypedEntity ;
		--|> #TWithParameters.
	function
		--|> #TMethod ";
		--|> behavioral" .
	event
		--|> #TSourceEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences ;
		--|> #TMethod;
		--|> #TInvocable;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	trigger
		--|> #TWithAttributes;
		--|> behavioral;
		--|> #TMethod;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	subRoutine
		--|> behavioral;
		--|> #TMethod;
		--|> #TInvocable;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).

	"structural entities (valueHodlers)"
	variable
		--|> #TStructuralEntity .
"		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible."
	parameter
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithTypes;
		--|> #TAccessible.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute.
	sharedVariable --|> attribute.
	globalVariable --|> attribute.
	localVariable --|> #TLocalVariable.
	instanceVariable --|> attribute.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible.
	parameter --|> #TParameter.

	"associations"
	invocation --|> #TInvocation.
	invocation
		--|> #THasSignature;
		--|> #TSourceEntity.
	access
		--|> #TSourceEntity;
		--|> #TAccess.
	variableAccess
		--|> #TSourceEntity;
		--|> #TAccess.
	reference
		--|> #TSourceEntity;
		--|> #TReference.

	"Major objects"
	majorObject
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes;
		--|> #TWithAccesses;
		inheritsFromTrait: tWithMethods without: #(#numberOfLinesOfCode);
		--|> #TWithFunctions;
		--|> #TWithReferences.
	userObject
		--|> majorObject ;
		--|> abstractType ;
		--|> #TWithInvocations.
	window --|> majorObject.
	window --|> #TWithInvocations.
	dataWindow
		--|> majorObject ;
		--|> #TWithInvocations ;
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes.
	structure --|> majorObject.
	globalFunction
		--|> majorObject;
		--|> #TWithInvocations;
		--|> abstractType.
	menuObject --|> majorObject.
	application --|> majorObject.
	query --|> majorObject.
	abstractType
		inheritsFromTrait: tNamed without: #(#mooseNameOn:) ;
		--|> #TType ;
		--|> #TReferenceable.
	customType --|> abstractType.
	basicType --|> abstractType.

	"to remove"
	argument
		--|> tNamed;
		--|> #TSourceEntity.
	functionReturn
		--|> #TSourceEntity;
		--|> tNamed.
	behaviorSignature
		--|> #TSourceEntity;
		--|> tNamed
]

{ #category : #definition }
PWBFamixModelGenerator >> defineProperties [
	majorObject property: #cyclomaticComplexity type: #Number.
	
	behavioral property: #cyclomaticComplexity type: #Number.
	behavioral property: #accessModifier type: #String.

	argument property: #argumentValue type: #Object.

	parameter property: #parameterOption type: #Object.
	parameter property: #parameterType type: #String.
	parameter property: #startPos type: #Number.

	function property: #returnType type: #Object.

	functionReturn property: #type type: #Object.
	functionReturn property: #returnValue type: #Object.
	functionReturn
		property: #doesBelongToSingleLineIfStatement
		type: #Boolean.

	attribute property: #attributeType type: #Object.
	
]

{ #category : #definition }
PWBFamixModelGenerator >> definePropertiesOld [
	majorObject property: #cyclomaticComplexity type: #Number.
	
	behavioral property: #cyclomaticComplexity type: #Number.
	behavioral property: #accessModifier type: #String.

	argument property: #argumentValue type: #Object.

	parameter property: #parameterOption type: #Object.
	parameter property: #parameterType type: #String.
	parameter property: #startPos type: #Number.

	function property: #returnType type: #Object.

	functionReturn property: #type type: #Object.
	functionReturn property: #returnValue type: #Object.
	functionReturn
		property: #doesBelongToSingleLineIfStatement
		type: #Boolean.

	attribute property: #attributeType type: #Object.
	
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	super defineRelations.
	(behavioral property: #returns)
		<>-* (functionReturn property: #behavioral).
	(behavioral property: #signature)
		<>- (behaviorSignature property: #behavioral).
	(parameter property: #behavioral)
		*-<> (behavioral property: #parameters).
	"(variable property: #behavioral)
		*-<> (behavioral property: #variables)."
	(dataWindow property: #graphicComponents)
		<>-* (graphicComponent property: #dataWindow).
	(majorObject property: #library)
		*-<> (library property: #userObjects).
	(invocation property: #arguments)
		<>-* (argument property: #invocation).

]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelationsNew [
	super defineRelations.

	((localVariable property: #parentBehaviouralEntity) container)
		*-
	(behavioral property: #localVariables).

	((parameter property: #parentBehaviouralEntity) container)
		*-
	(routine property: #parameters).
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelationsOld [
	super defineRelations.
	(behavioral property: #returns)
		<>-* (functionReturn property: #behavioral).
	(behavioral property: #signature)
		<>- (behaviorSignature property: #behavioral).
	(parameter property: #behavioral)
		*-<> (behavioral property: #parameters).
	"(variable property: #behavioral)
		*-<> (behavioral property: #variables)."
	(dataWindow property: #graphicComponents)
		<>-* (graphicComponent property: #dataWindow).
	(majorObject property: #library)
		*-<> (library property: #userObjects).
	(invocation property: #arguments)
		<>-* (argument property: #invocation).

]

{ #category : #definition }
PWBFamixModelGenerator >> defineTraits [
	super defineTraits.
	tNamed := builder newTraitNamed: #PBTNamed.
	tWithMethods := builder newTraitNamed: #PBTWithMethods
]

{ #category : #definition }
PWBFamixModelGenerator >> defineTraitsOld [
	super defineTraits.
	tNamed := builder newTraitNamed: #PBTNamed.
	tWithMethods := builder newTraitNamed: #PBTWithMethods
]

{ #category : #definition }
PWBFamixModelGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
