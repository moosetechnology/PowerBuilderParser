Class {
	#name : #PWBPreprocessorTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBPreprocessorTest >> parserClass [
	^ PWBPreprocessor
]

{ #category : #tests }
PWBPreprocessorTest >> testEmptyComment [
	self
		assert:
			(self
				parse:
					'code
//
code')
		equals:
			'code

code'
]

{ #category : #tests }
PWBPreprocessorTest >> testEspelette [
	self
		assert:
			(self
				parse:
					'this.Control[]={this.dw_liste,&
this.dw_detail}')
		equals:
			'this.Control[]={this.dw_liste,this.dw_detail}'
]

{ #category : #tests }
PWBPreprocessorTest >> testSimpleComment [
	self
		assert:
			(self
				parse:
					'water // a comment
water')
		equals:
			'water 
water'
]

{ #category : #tests }
PWBPreprocessorTest >> testSimpleComment2 [
	self
		assert:
			(self
				parse:
					'water //*** a comment
water 5*/3')
		equals:
			'water 
water 5*/3'
]

{ #category : #tests }
PWBPreprocessorTest >> testSimpleComment3 [
	self
		assert:
			(self
				parse:
					'/* comment
// comment */')
		equals:
			''
]
