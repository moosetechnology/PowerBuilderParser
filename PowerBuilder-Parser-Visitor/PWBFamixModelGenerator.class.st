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
		'access'
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
	event := builder newClassNamed: #Event.
	function := builder newClassNamed: #Function.
	sqlQuery := builder newClassNamed: #SqlQuery.
	subRoutine := builder newClassNamed: #SubRoutine.
	variable := builder newClassNamed: #Variable.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	attribute := builder newClassNamed: #Attribute.
	method := builder newClassNamed: #Method.
	invocation := builder newClassNamed: #Invocation.
	trigger := builder newClassNamed: #Trigger.
	abstractType := builder newClassNamed: #AbstractType.
	customType := builder newClassNamed: #CustomType.
	basicType := builder newClassNamed: #BasicType.
	access := builder newClassNamed: #Access
]

{ #category : #definition }
PWBFamixModelGenerator >> defineHierarchy [
	super defineHierarchy.
	graphicComponent
		--|> sourcedEntity;
		--|> #TNamed.
	event
		--|> sourcedEntity;
		--|> #TNamed.
	function
		--|> sourcedEntity;
		--|> #TNamed.
	function
		--|> sourcedEntity;
		--|> #TNamed.
	trigger
		--|> sourcedEntity;
		--|> #TNamed.
	subRoutine
		--|> sourcedEntity;
		--|> #TNamed.
	variable
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithTypes.
	dataWindow
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithAttributes.
	attribute
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TAttribute.
	method
		--|> #TMethod;
		--|> #TNamed;
		--|> #TWithParameters;
		--|> #TInvocable;
		--|> #TWithSignature;
		--|> #TWithAccesses.
	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.
	userObject
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithAttributes;
		--|> #TWithAccesses.
	dataWindow
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TWithAttributes;
		--|> #TWithAccesses.
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
	attribute
		--|> sourcedEntity;
		--|> #TNamed;
		--|> #TAttribute;
		--|> #TWithTypes;
		--|> #TAccessible
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	"variable *-<> variableAccess."
	
]
