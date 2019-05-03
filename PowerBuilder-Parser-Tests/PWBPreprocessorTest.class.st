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
PWBPreprocessorTest >> testCommentInComment [
	self
		assert:
			(self
				parse:
					'code
/* comment1
/* comment2 */
*/
code')
		equals:
			'code

code'
]

{ #category : #tests }
PWBPreprocessorTest >> testCommentSyntaxInString [
	self
		assert:
			(self
				parse:
					'if is_sys_deb = "O" then f_trace("regime trouve="+is_rgm+"///"+ls_reg_cod,"uf_calcul_cf")')
		equals:
			'if is_sys_deb = "O" then f_trace("regime trouve="+is_rgm+"///"+ls_reg_cod,"uf_calcul_cf")'
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
PWBPreprocessorTest >> testEmptyFile [
	self assert: (self parse: '') equals: ''
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

{ #category : #tests }
PWBPreprocessorTest >> testSimpleComment4 [
	self
		assert:
			(self
				parse:
					'code
//Fiche 84412 $ThomasD$ 07/02/2017
code')
		equals:
			'code

code'
]
