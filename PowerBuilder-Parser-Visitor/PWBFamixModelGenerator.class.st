Class {
	#name : #PWBFamixModelGenerator,
	#superclass : #FamixFileBasedLanguageGenerator,
	#instVars : [
		'graphicComponent',
		'event',
		'function',
		'sqlQuery',
		'subRoutine',
		'variable',
		'dataWindow',
		'attribute',
		'method',
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
		'structureFile',
		'functionFile',
		'menuObject',
		'application',
		'queryFile',
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
		'behaviorSignature'
	],
	#classInstVars : [
		'builder'
	],
	#category : #'PowerBuilder-Parser-Visitor'
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
	function := builder newClassNamed: #Routine.
	sqlQuery := builder newClassNamed: #SqlQuery.
	subRoutine := builder newClassNamed: #SubRoutine.
	variable := builder newClassNamed: #Variable.
	attribute := builder newClassNamed: #Attribute.
	parameter := builder newClassNamed: #Parameter.
	sharedVariable := builder newClassNamed: #SharedVariable.
	localVariable := builder newClassNamed: #LocalVariable.
	globalVariable := builder newClassNamed: #GlobalVariable.
	instanceVariable := builder newClassNamed: #InstanceVariable.
	method := builder newClassNamed: #Function.
	trigger := builder newClassNamed: #Trigger.
	argument := builder newClassNamed: #Argument.
	functionReturn := builder newClassNamed: #FunctionReturn.

	"Major objects"
	majorObject := builder newClassNamed: #majorObject.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	window := builder newClassNamed: #Window.
	structureFile := builder newClassNamed: #Structure.
	functionFile := builder newClassNamed: #GlobalFunction.
	menuObject := builder newClassNamed: #MenuObject.
	application := builder newClassNamed: #Application.
	queryFile := builder newClassNamed: #Query.
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
	graphicComponent
		--|> #TSourceEntity;
		--|> #TWithAttributes;
		--|> behavioral.
	event
		--|> behavioral;
		--|> #TMethod;
		--|> #TInvocable;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	function
		--|> behavioral;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TFunction.
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
	sharedVariable --|> attribute.
	globalVariable --|> attribute.
	localVariable --|> variable.
	instanceVariable --|> attribute.
	dataWindow
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute.
	method
		--|> behavioral;
		--|> #TMethod;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TWithParameters;
		--|> #TInvocable;
		--|> #THasSignature.
	behavioral
		--|> #TSourceEntity;
		--|> #TWithAccesses;
		--|> #TWithInvocations;
		--|> #TWithReferences.
	invocation --|> #TInvocation.
	invocation
		--|> #THasSignature;
		--|> #TSourceEntity.

	"Defining all major objects (files)"
	majorObject
		--|> #TSourceEntity;
		--|> #TNamedEntity;
		--|> #TWithAttributes;
		--|> #TWithAccesses;
		inheritsFromTrait: tWithMethods without: #(#numberOfLinesOfCode);
		--|> #TWithFunctions;
		--|> #TWithReferences.
	userObject --|> majorObject.
	userObject --|> abstractType.
	userObject --|> #TWithInvocations.
	window --|> majorObject.
	window --|> #TWithInvocations.
	dataWindow --|> majorObject.
	dataWindow --|> #TWithInvocations.
	structureFile --|> majorObject.
	functionFile
		--|> majorObject;
		--|> #TWithInvocations;
		--|> abstractType.
	menuObject --|> majorObject.
	application --|> majorObject.
	queryFile --|> majorObject.
	abstractType inheritsFromTrait: tNamed without: #(#mooseNameOn:).
	abstractType --|> #TType.
	abstractType --|> #TReferenceable.
	customType --|> abstractType.
	basicType --|> abstractType.
	access
		--|> #TSourceEntity;
		--|> #TAccess.
	variableAccess
		--|> #TSourceEntity;
		--|> #TAccess.
	reference
		--|> #TSourceEntity;
		--|> #TReference.
	attribute
		--|> #TSourceEntity;
		inheritsFromTrait: tNamed without: #(#mooseNameOn:);
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible.
	argument
		--|> tNamed;
		--|> #TSourceEntity.
	parameter --|> #TParameter.
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
	argument property: #argumentValue type: #Object.
	parameter property: #parameterOption type: #Object.
	parameter property: #parameterType type: #String.
	parameter property: #startPos type: #Number.
	method property: #returnType type: #Object.
	functionReturn property: #type type: #Object.
	functionReturn property: #returnValue type: #Object.
	functionReturn
		property: #doesBelongToSingleLineIfStatement
		type: #Boolean.
	attribute property: #attributeType type: #Object
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	(variable property: #behavioral)
		*-<> (behavioral property: #variables).
	(dataWindow property: #graphicComponents)
		<>-* (graphicComponent property: #dataWindow).
	(majorObject property: #library)
		*-<> (library property: #userObjects).
	(invocation property: #arguments)
		<>-* (argument property: #invocation).
	(behavioral property: #returns)
		<>-* (functionReturn property: #behavioral).
	(behavioral property: #signature)
		<>- (behaviorSignature property: #behavioral).
	(parameter property: #behavioral)
		*-<> (behavioral property: #parameters)
]

{ #category : #definition }
PWBFamixModelGenerator >> defineTraits [
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
