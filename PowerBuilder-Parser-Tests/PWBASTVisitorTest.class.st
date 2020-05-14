Class {
	#name : #PWBASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model',
		'toDelete'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
PWBASTVisitorTest >> createDirectory: aString [
	self toDelete addFirst: aString.
	^ self filesystem
		ensureCreateDirectory: (self filesystem pathFromString: aString)
]

{ #category : #setup }
PWBASTVisitorTest >> createFileNamed: aString content: aBlock [
	self toDelete addFirst: aString.
	aString asFileReference writeStreamDo: aBlock
]

{ #category : #tests }
PWBASTVisitorTest >> filesystem [
	^ FileSystem disk
]

{ #category : #tests }
PWBASTVisitorTest >> pwbLibAString [
	^ 'pwbLibs/pwbLibA/'
]

{ #category : #tests }
PWBASTVisitorTest >> pwbLibBString [
	^ 'pwbLibs/pwbLibB/'
]

{ #category : #tests }
PWBASTVisitorTest >> pwbLibsString [
	^ 'pwbLibs/'
]

{ #category : #running }
PWBASTVisitorTest >> setUp [
	| library context |
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor importingContext: PWBFamixImporter new importingContext.
	model := FamixPWBModel new.
	library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself.
	visitor
		file: 'aFile.sru' asFileReference;
		preprocessingMap: OrderedDictionary new;
		model: model.
	visitor currentLibrary: library.
	context := FamixPWBImportingContext new importMaximum.
	context
		imports: (context imports reject: [ :class | class name endsWith: 'Anchor' ]).
	"visitor importingContext: context."
	result := PWBCommonParser new parse: self sourceExample.
	result
		fileName: 'aFile';
		fileExtension: 'sru'
]

{ #category : #running }
PWBASTVisitorTest >> sourceExample [
	^ 'global variables
long gl_long1;
global String  gs_string1;
end variables
	
	shared variables
long sl_long1;
end variables
type variables
long il_long1;
end variables

	private function integer aFunction ();
  long lLong
	var.isNull()
  anotherFunction(2, "blah")

  return LLONG
end function
private function integer anotherFunction (long aLong, string aString);  
  AFUNCTION(aLong)
  return 1
end function

private function integer eventTestingFunction()
this.triggerEvent("evt_trigger", 0, "")
this.postEvent("evt_post", 0, "")
TriggerEvent( this, "destructor" )
end function
'
]

{ #category : #accessing }
PWBASTVisitorTest >> sourceText: anEntity [
	^ self sourceExample
		copyFrom: anEntity sourceAnchor startPos
		to: anEntity sourceAnchor endPos
]

{ #category : #tests }
PWBASTVisitorTest >> testFunctionInvocationSourceText [
	| invocation1 invocation2 |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	invocation1 := ((model allWithType: FamixPWBFunction)
		detect: [ :function | function name = 'anotherFunction' ])
		incomingInvocations anyOne.
	invocation2 := model allInvocations
		detect: [ :inv | inv candidates anyOne name = 'isNull' ].
	self
		assert: (self sourceText: invocation1)
		equals: 'anotherFunction(2, "blah")'.
	self assert: (self sourceText: invocation2) equals: '.isNull()'
]

{ #category : #tests }
PWBASTVisitorTest >> testGlobalVariables [
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self
		assertCollection: ((model allWithType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testInstanceVariables [
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self
		assertCollection: ((model allWithType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: {'il_long1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParameter [
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self
		assertCollection: ((model allWithType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'aString'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParserEventInvocation [
	| modelTriggerEvent |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: (model allWithType: FamixPWBEvent) size equals: 2.
	modelTriggerEvent := (model allWithType: FamixPWBEvent) anyOne.
	self assert: modelTriggerEvent incomingInvocations size equals: 1.
	self
		assert: modelTriggerEvent incomingInvocations anyOne sender name
		equals: 'eventTestingFunction'.
	self
		assert: (self sourceText: modelTriggerEvent incomingInvocations anyOne)
		equals: 'this.triggerEvent("evt_trigger", 0, "")'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationCorrectCase [
	| invok |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allInvocations size equals: 5.
	invok := model allInvocations select: [ :i | i target anyOne name asLowercase = 'afunction' ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'aFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationWrongCase [
	| invok |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allInvocations size equals: 5.
	invok := model allInvocations
		select: [ :i | i target anyOne name asLowercase = 'anotherfunction' ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'anotherFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessCorrectCase [
	| acc |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allAccesses size equals: 3.
	acc := model allAccesses select: [ :a | a accessor name asLowercase = 'anotherfunction' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne variable name
		equals: 'aLong'.
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessWrongCase [
	| accs |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allAccesses size equals: 3.
	accs := model allAccesses
		select: [ :a | a accessor name asLowercase = 'afunction' ].
	self assert: accs size equals: 2.
	self
		assertCollection: (accs collect: [ :acc | acc variable name ])
		hasSameElements: {'lLong' . 'var'}
]

{ #category : #tests }
PWBASTVisitorTest >> testProssessingMapKeepAllPreprocessedFiles [
	| importer |
	self createDirectory: self pwbLibsString.
	self createDirectory: self pwbLibAString.
	self createDirectory: self pwbLibBString.
	self
		createFileNamed: self pwbLibAString , 'fileLibA.sru'
		content: [ :stream | stream nextPutAll: self sourceExample ].
	self
		createFileNamed: self pwbLibBString , 'fileLibB.sru'
		content: [ :stream | stream nextPutAll: '' ].
	importer := PWBFamixImporter new.
	importer importInOnePassFromFolder: self pwbLibsString.
	self assert: importer preprocessedMap size equals: 2
]

{ #category : #tests }
PWBASTVisitorTest >> testSharedVariables [
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self
		assertCollection: ((model allWithType: FamixPWBSharedVariable) collect: #name)
		hasSameElements: {'sl_long1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testSourceTestSettings [
	| eventTestingFunction |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	eventTestingFunction := (model allWithType: FamixPWBFunction)
		detect: [ :function | function name = 'eventTestingFunction' ].
	self
		assert: (self sourceText: eventTestingFunction)
		equals:
			'private function integer eventTestingFunction()
this.triggerEvent("evt_trigger", 0, "")
this.postEvent("evt_post", 0, "")
TriggerEvent( this, "destructor" )
end function'
]

{ #category : #tests }
PWBASTVisitorTest >> toDelete [
	^ toDelete ifNil: [toDelete := OrderedCollection new]
]
