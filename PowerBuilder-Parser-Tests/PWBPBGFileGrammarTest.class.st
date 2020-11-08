Class {
	#name : #PWBPBGFileGrammarTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBPBGFileGrammarTest >> parserClass [
	^ PWBPBGFileGrammar
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testBbgObjectsDeclaration [
	self
		parse:
			'@begin Objects 
 "dw_cre_brd.srd" "cwm_pai_uo.pbl";
 "dw_lec_fam_mab.srd" "cwm_pai_uo.pbl";
@end;'
		rule: #pbgObjectsDeclaration
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testLibraryDeclaration [
self parse: '@begin Libraries
 "cwm_pai_uo.pbl" "";
@end;' rule: #libraryDeclaration  
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testPBGLine [
	self
		parse:
			'"cwm_pai_uo.pbl" "";'
		rule: #pbgLine
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testPBGLine1 [
	self
		parse:
			'"dw_lec_fam_mab.srd" "cwm_pai_uo.pbl";'
		rule: #pbgLine
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testPBGLines [
	self
		parse:
			'"dw_cre_brd.srd" "cwm_pai_uo.pbl";
 "dw_lec_fam_mab.srd" "cwm_pai_uo.pbl";'
		rule: #pbgLines
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testPbgFile [
	self
		parse:
			'Save Format v3.0(19990112)
@begin Libraries
 "cwm_pai_uo.pbl" "";
@end;
@begin Objects 
 "dw_cre_brd.srd" "cwm_pai_uo.pbl";
 "dw_lec_fam_mab.srd" "cwm_pai_uo.pbl";
@end;'
		rule: #pbgFile
]

{ #category : #tests }
PWBPBGFileGrammarTest >> testSaveFormat [
	self parse: 'Save Format v3.0(19990112)' rule: #saveFormat
]
