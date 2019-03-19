Class {
	#name : #PWBFamixModelGenerator,
	#superclass : #FamixFileBasedLanguageGenerator,
	#instVars : [
		'graphicComponent',
		'event',
		'function',
		'sqlQuery',
		'subRoutine',
		'type',
		'variable',
		'dataWindow',
		'attribute',
		'method',
		'invocation',
		'userObject'
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
	type := builder newClassNamed: #Type.
	variable := builder newClassNamed: #Variable.
	dataWindow := builder newClassNamed: #DataWindow.
	userObject := builder newClassNamed: #UserObject.
	attribute := builder newClassNamed: #Attribute.
	method := builder newClassNamed: #Method.
	invocation := builder newClassNamed: #Invocation
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
	sqlQuery
		--|> sourcedEntity;
		--|> #TNamed.
	subRoutine
		--|> sourcedEntity;
		--|> #TNamed.
	type
		--|> sourcedEntity;
		--|> #TNamed.
	variable
		--|> sourcedEntity;
		--|> #TNamed.
	dataWindow
		--|> sourcedEntity;
		--|> #TNamed.
	attribute
		--|> sourcedEntity;
		--|> #TNamed.
	method
		--|> #TMethod;
		--|> #TNamed;
		--|> #TWithParameters;
		--|> #TInvocable;
		--|> #TWithSignature.
	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.
	userObject
		--|> sourcedEntity;
		--|> #TNamed.
	dataWindow
		--|> sourcedEntity;
		--|> #TNamed
]
