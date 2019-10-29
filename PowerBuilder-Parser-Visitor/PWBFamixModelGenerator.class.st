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
		'ticket',
		'ticketAssociation'
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
	abstractType := builder newTraitNamed: #AbstractType.
	customType := builder newClassNamed: #CustomType.
	basicType := builder newClassNamed: #BasicType.
	
	"Association"
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	variableAccess := builder newClassNamed: #VariableAccess.
	reference := builder newClassNamed: #Reference.
	
	"CIM specific"
	ticket := builder newClassNamed: #Ticket.
	ticketAssociation := builder newClassNamed: #TicketAssociation
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
		--|> #TInvocable;
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
		--|> #TWithInvocations;
		--|> #TWithReferences.
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
	functionFile --|> majorObject.
	menuObject --|> majorObject.
	application --|> majorObject.
	queryFile --|> majorObject.
	abstractType --|> #TNamed.
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
	reference
		--|> association;
		--|> #TWithSourceAnchor;
		--|> #TReference.
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
	ticket property: #number type: #Number.
	ticketAssociation property: #date type: #String.
	ticketAssociation property: #author type: #String.
	
]

{ #category : #definition }
PWBFamixModelGenerator >> defineRelations [
	(variable property: #behavioral)
		*-<> (behavioral property: #variables).
	(dataWindow property: #graphicComponents)
		<>-* (graphicComponent property: #dataWindow).
	(majorObject property: #library)
		*-<> (library property: #userObjects).
	(ticketAssociation property: #majorObject) *- (majorObject property: #ticketAssociations).
	(ticketAssociation property: #ticket) *- (ticket property: #ticketAssociations).
	
]

{ #category : #definition }
PWBFamixModelGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
