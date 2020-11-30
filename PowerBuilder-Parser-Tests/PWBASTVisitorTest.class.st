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

{ #category : #running }
PWBASTVisitorTest >> createDirectory: aString [
	self toDelete addFirst: aString.
	^ self filesystem
		ensureCreateDirectory: (self filesystem pathFromString: aString)
]

{ #category : #running }
PWBASTVisitorTest >> createFileNamed: aString content: aBlock [
	self toDelete addFirst: aString.
	aString asFileReference writeStreamDo: aBlock
]

{ #category : #accessing }
PWBASTVisitorTest >> filesystem [
	^ FileSystem disk
]

{ #category : #accessing }
PWBASTVisitorTest >> pwbLibAString [
	^ 'pwbLibs/pwbLibA/'
]

{ #category : #accessing }
PWBASTVisitorTest >> pwbLibBString [
	^ 'pwbLibs/pwbLibB/'
]

{ #category : #accessing }
PWBASTVisitorTest >> pwbLibsString [
	^ 'pwbLibs/'
]

{ #category : #running }
PWBASTVisitorTest >> setUp [
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor importingContext: PWBFamixImporter new importingContext.
	self setupModel.
	visitor
		file: 'aFile.sru' asFileReference;
		preprocessingMap: OrderedDictionary new;
		model: model.
	result := PWBCommonParser new parse: self sourceExample.
	result
		fileName: 'aFile';
		fileExtension: 'sru'.
	visitor
		visit: result;
		resolveUnresolvedReferences
]

{ #category : #running }
PWBASTVisitorTest >> setupModel [
	| library |
	model := FamixPWBModel new.
	library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself.
	visitor currentLibrary: library.

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
  long lL_return
  var.isNull()
  anotherFunction(2, "blah")
  return LL_RETURN
end function

private function integer anotherFunction (long aLong, string aString);  
  AFUNCTION(aLong)
  this.il_long1 = 5
  return il_long1[1]
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
	self
		assertCollection: ((model allWithType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testInstanceVariables [
	self
		assertCollection: ((model allWithType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: {'il_long1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParameter [
	self
		assertCollection: ((model allWithType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'aString'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParserAttributeAccess [
	| acc |
	self assert: model allAccesses size equals: 5.
	acc := model allAccesses
		select: [ :a | a variable name asLowercase = 'il_long1' ].
	self assert: acc anyOne accessor name equals: 'anotherFunction'.
	self assert: (acc select: #isWrite) isNotEmpty
]

{ #category : #tests }
PWBASTVisitorTest >> testParserEventInvocation [
	| modelTriggerEvent |
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
	self assert: model allInvocations size equals: 5.
	invok := model allInvocations select: [ :i |
		(i source name asLowercase = 'afunction')
		and: [ i target anyOne name asLowercase ~= 'isnull' ] ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'anotherFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationWrongCase [
	| invok |
	self assert: model allInvocations size equals: 5.
	invok := model allInvocations
		select: [ :i | i source name asLowercase = 'anotherfunction' ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'aFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturn [
	| return |
	return := (model allWithType: FamixPWBFunctionReturn)
		detect: [ :r | r name = 'aFunction.Return' ]
		ifNone: [ nil ].
	self assert: return isNotNil.
"	self assert: return returnValue equals: 'LL_RETURN'"
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturnArrayWithSize [
	| return |
	return := (model allWithType: FamixPWBFunctionReturn)
		detect: [ :r | r name = 'anotherFunction.Return' ]
		ifNone: [ nil ].
	self assert: return isNotNil.
	"self assert: return returnValue equals: 'il_long1[ 1 ]'"
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessCorrectCase [
	| acc |
	self assert: model allAccesses size equals: 5.
	acc := model allAccesses select: [ :a | a variable name asLowercase = 'along' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne accessor name asLowercase
		equals: 'anotherfunction'.
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessWrongCase [
	| accs |
	self assert: model allAccesses size equals: 5.
	accs := model allAccesses
		select: [ :a | a accessor name asLowercase = 'afunction' ].
	self assert: accs size equals: 2.
	self
		assertCollection: (accs collect: [ :acc | acc variable name asLowercase ])
		hasSameElements: {'ll_return' . 'var'}
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
	self
		assertCollection: ((model allWithType: FamixPWBSharedVariable) collect: #name)
		hasSameElements: {'sl_long1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testSourceTestSettings [
	| eventTestingFunction |
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

{ #category : #running }
PWBASTVisitorTest >> toDelete [
	^ toDelete ifNil: [toDelete := OrderedCollection new]
]
