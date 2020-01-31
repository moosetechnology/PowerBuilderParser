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
PWBPreprocessorTest >> testCommentWithThen [
	self
		assert:
			(self
				parse:
					'if ld_cur_deb <= ld_deb and ld_cur_fin >= ld_deb /*fiche 41092 $Amaury$ 30/12/2009*/ and ld_cur_fin >= ld_cur_deb/*fin fiche 41092*/then ')
		equals:
			'if ld_cur_deb <= ld_deb and ld_cur_fin >= ld_deb   and ld_cur_fin >= ld_cur_deb then '
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
PWBPreprocessorTest >> testEmptyComment1 [
	self
		assert:
			(self
				parse:
					'code
/**/
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
PWBPreprocessorTest >> testNoComment1 [
	self
		assert:
			(self
				parse:
					'if (id_dlq_dds >= ld_deb and id_dlq_dds <= ld_fin) OR &

						   (id_dlq_fds >= ld_deb and id_dlq_fds <= ld_fin) THEN

							   return ls_val

						end if')
		equals:
			'if (id_dlq_dds >= ld_deb and id_dlq_dds <= ld_fin) OR 

						   (id_dlq_fds >= ld_deb and id_dlq_fds <= ld_fin) THEN

							   return ls_val

						end if'
]

{ #category : #tests }
PWBPreprocessorTest >> testRemoveExportInformations1 [
	self
		assert:
			(self
				parse:
					'$PBExportHeader$dw_particiaption_adh.srq
select
	prt.prt_no,
	prt.prt_deb,
	prt.prt_rad,
	grp.grp_cod,
	grp_lib
from prt , gpp , grp')
		equals:
			'select
	prt.prt_no,
	prt.prt_deb,
	prt.prt_rad,
	grp.grp_cod,
	grp_lib
from prt , gpp , grp'
]

{ #category : #tests }
PWBPreprocessorTest >> testRemoveExportInformations2 [
	self
		assert:
			(self
				parse:
					'$PBExportHeader$dw_adh_prm.srd
$PBExportComments$/0004/ $Franck$ 27/02/2008~r~n/0003/ $Franck$ 08/10/2007~r~n/0002/ $Damien$ 02/07/2007~r~n/0001/ $Damien$ le 24/05/2007
release 8;
datawindow(units=0 timer_interval=0 color=1073741824 processing=0 HTMLDW=no print.documentname="" print.orientation = 0 print.margin.left = 110 print.margin.right = 110 print.margin.top = 96 print.margin.bottom = 96 print.paper.source = 0 print.paper.size = 0 print.prompt=no print.buttons=no print.preview.buttons=no )
header(height=136 color="536870912" )')
		equals:
			'datawindow(units=0 timer_interval=0 color=1073741824 processing=0 HTMLDW=no print.documentname="" print.orientation = 0 print.margin.left = 110 print.margin.right = 110 print.margin.top = 96 print.margin.bottom = 96 print.paper.source = 0 print.paper.size = 0 print.prompt=no print.buttons=no print.preview.buttons=no )
header(height=136 color="536870912" )'
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
			'
'
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
