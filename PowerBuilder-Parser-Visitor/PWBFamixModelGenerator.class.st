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
		'library'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

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
	method := builder newClassNamed: #Function.
	trigger := builder newClassNamed: #Trigger.
	
	"Major objects"
	majorObject := builder newClassNamed: #majorObject.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	window := builder newClassNamed: #Window.
	structureFile := builder newClassNamed: #StructureFile.
	functionFile := builder newClassNamed: #FunctionFile.
	menuObject := builder newClassNamed: #MenuObject.
	application := builder newClassNamed: #Application.
	queryFile := builder newClassNamed: #QueryFile.
	
	"Type"
	abstractType := builder newClassNamed: #AbstractType.
	customType := builder newClassNamed: #CustomType.
	basicType := builder newClassNamed: #BasicType.
	
	"Association"
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	variableAccess := builder newClassNamed: #VariableAccess
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchy [
	super defineHierarchy.
	library
		--|> #TNamed;
		--|> #TWithSourceAnchor.
	graphicComponent
		--|> sourcedEntity;
		--|> #TWithAttributes;
		--|> behavioral.
	event
		--|> behavioral;
		--|> #TMethod;
		--|> #TNamed.
	function
		--|> behavioral;
		--|> #TNamed;
		--|> #TFunction.
	trigger
		--|> #TWithAttributes;
		--|> behavioral;
		--|> #TMethod;
		--|> #TNamed.
	subRoutine
		--|> behavioral;
		--|> #TMethod;
		--|> #TInvocable;
		--|> #TNamed.
	variable
		--|> #TWithSourceAnchor;
		--|> #TNamed;
		--|> #TWithTypes;
		--|> #TAccessible.
	dataWindow
		--|> #TWithSourceAnchor;
		--|> #TNamed;
		--|> #TWithAttributes.
	attribute
		--|> #TWithSourceAnchor;
		--|> #TNamed;
		--|> #TAttribute.
	method
		--|> behavioral;
		--|> #TMethod;
		--|> #TNamed;
		--|> #TWithParameters;
		--|> #TInvocable;
		--|> #TWithSignature.
	behavioral
		--|> #TWithSourceAnchor;
		--|> #TWithAccesses;
		--|> #TWithInvocations.
	invocation --|> association.
	invocation --|> #TInvocation.
	invocation
		--|> #TWithSignature;
		--|> #TWithSourceAnchor.

	"Defining all major objects (files)"
	majorObject
		--|> #TWithSourceAnchor;
		--|> #TNamed;
		--|> #TWithAttributes;
		--|> #TWithAccesses;
		--|> #TWithMethods;
		--|> #TWithFunctions.
	userObject --|> majorObject.
	userObject
		--|> #TWithSuperInheritances;
		--|> #TWithSubInheritances.
	window --|> majorObject.
	dataWindow --|> majorObject.
	
	dataWindow --|> #TWithInvocations.
	structureFile --|> majorObject.
	functionFile --|> majorObject.
	menuObject --|> majorObject.
	application --|> majorObject.
	queryFile --|> majorObject.
	abstractType --|> namedEntity.
	abstractType --|> #TType.
	abstractType --|> #TReferenceable.
	abstractType --|> #TWithSuperInheritances.
	abstractType --|> #TWithSubInheritances.
	customType --|> abstractType.
	basicType --|> abstractType.
	access
		--|> association;
		--|> #TWithSourceAnchor;
		--|> #TAccess.
	variableAccess
		--|> association;
		--|> #TWithSourceAnchor;
		--|> #TAccess.
	attribute
		--|> #TWithSourceAnchor;
		--|> #TNamed;
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible
]

{ #category : #definition }
PWBFamixModelGenerator >> defineProperties [
	majorObject property: #cyclomaticComplexity type: #Number.
	behavioral property: #cyclomaticComplexity type: #Number.
	
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	(variable property: #behavioral) *-<> (behavioral property: #variables).
	(dataWindow property: #graphicComponents)
		<>-* (graphicComponent property: #dataWindow).
	(majorObject property: #library)
		*-<> (library property: #userObjects)
]
