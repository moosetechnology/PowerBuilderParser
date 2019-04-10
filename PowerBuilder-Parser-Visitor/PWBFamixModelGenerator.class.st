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
		'majorObject'
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
	graphicComponent := builder newClassNamed: #GraphicComponent.
	behavioral := builder newClassNamed: #Behavioral.
	event := builder newClassNamed: #Event.
	function := builder newClassNamed: #Function.
	sqlQuery := builder newClassNamed: #SqlQuery.
	subRoutine := builder newClassNamed: #SubRoutine.
	variable := builder newClassNamed: #Variable.
	
	"Major objects"
	majorObject := builder newClassNamed: #majorObject.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	window := builder newClassNamed: #Window.
		
	attribute := builder newClassNamed: #Attribute.
	method := builder newClassNamed: #Method.
	invocation := builder newClassNamed: #Invocation.
	trigger := builder newClassNamed: #Trigger.
	abstractType := builder newClassNamed: #AbstractType.
	customType := builder newClassNamed: #CustomType.
	basicType := builder newClassNamed: #BasicType.
	access := builder newClassNamed: #Access.
	variableAccess := builder newClassNamed: #VariableAccess
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchy [
	super defineHierarchy.
	graphicComponent
		--|> sourcedEntity.
	event
		--|> behavioral;
		--|> sourcedEntity;
		--|> #TNamed.
	function
		--|> sourcedEntity;
		--|> behavioral;
		--|> #TNamed.
	trigger
		--|> sourcedEntity;
		--|> #TWithAttributes;
		--|> behavioral;
		--|> #TNamed.
	subRoutine
		--|> sourcedEntity;
		--|> #TWithAttributes;
		--|> behavioral;
		--|> #TNamed.
	variable
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithTypes;
		--|> #TAccessible.
	dataWindow
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithAttributes.
	attribute
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TAttribute.
	method
		--|> behavioral;
		--|> #TMethod;
		--|> #TNamed;
		--|> #TWithParameters;
		--|> #TInvocable;
		--|> #TWithSignature.
	behavioral --|> #TWithAccesses.
	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.
	majorObject
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithAttributes;
		--|> #TWithAccesses.
	userObject --|> majorObject.
	window --|> majorObject.
	dataWindow --|> majorObject.
	abstractType --|> namedEntity.
	abstractType --|> #TType.
	abstractType --|> #TReferenceable.
	abstractType --|> #TWithSuperInheritances.
	abstractType --|> #TWithSubInheritances.
	customType --|> abstractType.
	basicType --|> abstractType.
	access
		--|> association;
		--|> #TAccess.
	variableAccess
		--|> association;
		--|> #TAccess.
	attribute
		--|> sourcedEntity;
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
	(variable property: #function) *-<> (function property: #variables)
]
