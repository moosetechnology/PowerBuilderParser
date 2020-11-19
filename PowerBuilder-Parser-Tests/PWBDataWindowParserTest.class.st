Class {
	#name : #PWBDataWindowParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBDataWindowParserTest >> parserClass [
	<generated>
	^ PWBDataWindowParser
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumn1 [
	<generated>
	self
		assert:
			(self
				parse: 'column=(type=char(24) updatewhereclause=no name=dct_aoc dbname="dct_aoc" )'
				rule: #column)
		equals:
			(PWBASTColumn new
				columnDefinition:
					(PWBASTColumnDefinition new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTColumnTypeOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTFunctionInvocation new
																		defaultVariable: nil;
																		functionName:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'char';
																				startPosition: 14;
																				stopPosition: 17;
																				yourself);
																		functionArguments:
																			(PWBASTFunctionArguments new
																				functionArguments:
																					{(PWBASTFunctionArgument new
																						argumentOption: nil;
																						expression:
																							(PWBASTExpression new
																								expression:
																									(PWBASTExpressionTerm new
																										expressionTerm:
																											(PWBASTNumber new
																												number: '24';
																												startPosition: 19;
																												stopPosition: 20;
																												yourself);
																										startPosition: 19;
																										stopPosition: 20;
																										yourself);
																								expressionAction: nil;
																								startPosition: 19;
																								stopPosition: 20;
																								yourself);
																						startPosition: 19;
																						stopPosition: 20;
																						yourself)};
																				startPosition: 18;
																				stopPosition: 21;
																				yourself);
																		startPosition: 14;
																		stopPosition: 21;
																		yourself);
																startPosition: 14;
																stopPosition: 21;
																yourself);
														expressionAction: nil;
														startPosition: 14;
														stopPosition: 21;
														yourself);
												startPosition: 9;
												stopPosition: 21;
												yourself);
										startPosition: 9;
										stopPosition: 21;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'updatewhereclause';
																				startPosition: 23;
																				stopPosition: 39;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 23;
																		stopPosition: 39;
																		yourself);
																arrayPosition: nil;
																startPosition: 23;
																stopPosition: 39;
																yourself);
														startPosition: 23;
														stopPosition: 39;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'no';
																										startPosition: 41;
																										stopPosition: 42;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 41;
																								stopPosition: 42;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 41;
																						stopPosition: 42;
																						yourself);
																				startPosition: 41;
																				stopPosition: 42;
																				yourself);
																		startPosition: 41;
																		stopPosition: 42;
																		yourself);
																expressionAction: nil;
																startPosition: 41;
																stopPosition: 42;
																yourself);
														startPosition: 40;
														stopPosition: 42;
														yourself);
												startPosition: 23;
												stopPosition: 42;
												yourself);
										startPosition: 23;
										stopPosition: 42;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'dct_aoc';
																								startPosition: 49;
																								stopPosition: 55;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 49;
																						stopPosition: 55;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 49;
																				stopPosition: 55;
																				yourself);
																		startPosition: 49;
																		stopPosition: 55;
																		yourself);
																startPosition: 49;
																stopPosition: 55;
																yourself);
														expressionAction: nil;
														startPosition: 49;
														stopPosition: 55;
														yourself);
												startPosition: 44;
												stopPosition: 55;
												yourself);
										startPosition: 44;
										stopPosition: 55;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTString new
																		string: '"dct_aoc"';
																		startPosition: 64;
																		stopPosition: 72;
																		yourself);
																startPosition: 64;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 64;
														stopPosition: 72;
														yourself);
												startPosition: 57;
												stopPosition: 72;
												yourself);
										startPosition: 57;
										stopPosition: 72;
										yourself)};
								startPosition: 9;
								stopPosition: 72;
								yourself);
						startPosition: 8;
						stopPosition: 74;
						yourself);
				startPosition: 1;
				stopPosition: 74;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumn2 [
	<generated>
	self
		assert:
			(self
				parse: 'column=(type=datetime updatewhereclause=no name=dct_dac dbname="dct_dac" )'
				rule: #column)
		equals:
			(PWBASTColumn new
				columnDefinition:
					(PWBASTColumnDefinition new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTColumnTypeOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTBasicType new
																				basicType: 'datetime';
																				startPosition: 14;
																				stopPosition: 21;
																				yourself);
																		startPosition: 14;
																		stopPosition: 21;
																		yourself);
																startPosition: 14;
																stopPosition: 21;
																yourself);
														expressionAction: nil;
														startPosition: 14;
														stopPosition: 21;
														yourself);
												startPosition: 9;
												stopPosition: 21;
												yourself);
										startPosition: 9;
										stopPosition: 21;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'updatewhereclause';
																				startPosition: 23;
																				stopPosition: 39;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 23;
																		stopPosition: 39;
																		yourself);
																arrayPosition: nil;
																startPosition: 23;
																stopPosition: 39;
																yourself);
														startPosition: 23;
														stopPosition: 39;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'no';
																										startPosition: 41;
																										stopPosition: 42;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 41;
																								stopPosition: 42;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 41;
																						stopPosition: 42;
																						yourself);
																				startPosition: 41;
																				stopPosition: 42;
																				yourself);
																		startPosition: 41;
																		stopPosition: 42;
																		yourself);
																expressionAction: nil;
																startPosition: 41;
																stopPosition: 42;
																yourself);
														startPosition: 40;
														stopPosition: 42;
														yourself);
												startPosition: 23;
												stopPosition: 42;
												yourself);
										startPosition: 23;
										stopPosition: 42;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'dct_dac';
																								startPosition: 49;
																								stopPosition: 55;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 49;
																						stopPosition: 55;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 49;
																				stopPosition: 55;
																				yourself);
																		startPosition: 49;
																		stopPosition: 55;
																		yourself);
																startPosition: 49;
																stopPosition: 55;
																yourself);
														expressionAction: nil;
														startPosition: 49;
														stopPosition: 55;
														yourself);
												startPosition: 44;
												stopPosition: 55;
												yourself);
										startPosition: 44;
										stopPosition: 55;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTString new
																		string: '"dct_dac"';
																		startPosition: 64;
																		stopPosition: 72;
																		yourself);
																startPosition: 64;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 64;
														stopPosition: 72;
														yourself);
												startPosition: 57;
												stopPosition: 72;
												yourself);
										startPosition: 57;
										stopPosition: 72;
										yourself)};
								startPosition: 9;
								stopPosition: 72;
								yourself);
						startPosition: 8;
						stopPosition: 74;
						yourself);
				startPosition: 1;
				stopPosition: 74;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumn3 [
	<generated>
	self
		assert:
			(self
				parse: 'column=(type=decimal(5) update=yes updatewhereclause=yes name=nov_ttc dbname="NOV_TTC" )'
				rule: #column)
		equals:
			(PWBASTColumn new
				columnDefinition:
					(PWBASTColumnDefinition new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTColumnTypeOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTFunctionInvocation new
																		defaultVariable: nil;
																		functionName:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'decimal';
																				startPosition: 14;
																				stopPosition: 20;
																				yourself);
																		functionArguments:
																			(PWBASTFunctionArguments new
																				functionArguments:
																					{(PWBASTFunctionArgument new
																						argumentOption: nil;
																						expression:
																							(PWBASTExpression new
																								expression:
																									(PWBASTExpressionTerm new
																										expressionTerm:
																											(PWBASTNumber new
																												number: '5';
																												startPosition: 22;
																												stopPosition: 22;
																												yourself);
																										startPosition: 22;
																										stopPosition: 22;
																										yourself);
																								expressionAction: nil;
																								startPosition: 22;
																								stopPosition: 22;
																								yourself);
																						startPosition: 22;
																						stopPosition: 22;
																						yourself)};
																				startPosition: 21;
																				stopPosition: 23;
																				yourself);
																		startPosition: 14;
																		stopPosition: 23;
																		yourself);
																startPosition: 14;
																stopPosition: 23;
																yourself);
														expressionAction: nil;
														startPosition: 14;
														stopPosition: 23;
														yourself);
												startPosition: 9;
												stopPosition: 23;
												yourself);
										startPosition: 9;
										stopPosition: 23;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'update';
																				startPosition: 25;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 25;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 25;
																stopPosition: 30;
																yourself);
														startPosition: 25;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'yes';
																										startPosition: 32;
																										stopPosition: 34;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 32;
																								stopPosition: 34;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 32;
																						stopPosition: 34;
																						yourself);
																				startPosition: 32;
																				stopPosition: 34;
																				yourself);
																		startPosition: 32;
																		stopPosition: 34;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 34;
																yourself);
														startPosition: 31;
														stopPosition: 34;
														yourself);
												startPosition: 25;
												stopPosition: 34;
												yourself);
										startPosition: 25;
										stopPosition: 34;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'updatewhereclause';
																				startPosition: 36;
																				stopPosition: 52;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 36;
																		stopPosition: 52;
																		yourself);
																arrayPosition: nil;
																startPosition: 36;
																stopPosition: 52;
																yourself);
														startPosition: 36;
														stopPosition: 52;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'yes';
																										startPosition: 54;
																										stopPosition: 56;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 54;
																								stopPosition: 56;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 54;
																						stopPosition: 56;
																						yourself);
																				startPosition: 54;
																				stopPosition: 56;
																				yourself);
																		startPosition: 54;
																		stopPosition: 56;
																		yourself);
																expressionAction: nil;
																startPosition: 54;
																stopPosition: 56;
																yourself);
														startPosition: 53;
														stopPosition: 56;
														yourself);
												startPosition: 36;
												stopPosition: 56;
												yourself);
										startPosition: 36;
										stopPosition: 56;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'nov_ttc';
																								startPosition: 63;
																								stopPosition: 69;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 63;
																						stopPosition: 69;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 63;
																				stopPosition: 69;
																				yourself);
																		startPosition: 63;
																		stopPosition: 69;
																		yourself);
																startPosition: 63;
																stopPosition: 69;
																yourself);
														expressionAction: nil;
														startPosition: 63;
														stopPosition: 69;
														yourself);
												startPosition: 58;
												stopPosition: 69;
												yourself);
										startPosition: 58;
										stopPosition: 69;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTString new
																		string: '"NOV_TTC"';
																		startPosition: 78;
																		stopPosition: 86;
																		yourself);
																startPosition: 78;
																stopPosition: 86;
																yourself);
														expressionAction: nil;
														startPosition: 78;
														stopPosition: 86;
														yourself);
												startPosition: 71;
												stopPosition: 86;
												yourself);
										startPosition: 71;
										stopPosition: 86;
										yourself)};
								startPosition: 9;
								stopPosition: 86;
								yourself);
						startPosition: 8;
						stopPosition: 88;
						yourself);
				startPosition: 1;
				stopPosition: 88;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumnNameOption1 [
	<generated>
	self
		assert: (self parse: 'dbname="dlq.NUM_EQI"' rule: #columnNameOption)
		equals:
			(PWBASTColumnNameOption new
				expression:
					(PWBASTExpression new
						expression:
							(PWBASTExpressionTerm new
								expressionTerm:
									(PWBASTString new
										string: '"dlq.NUM_EQI"';
										startPosition: 8;
										stopPosition: 20;
										yourself);
								startPosition: 8;
								stopPosition: 20;
								yourself);
						expressionAction: nil;
						startPosition: 8;
						stopPosition: 20;
						yourself);
				startPosition: 1;
				stopPosition: 20;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumnTypeOption1 [
	<generated>
	self
		assert: (self parse: 'type=char(8)' rule: #columnTypeOption)
		equals:
			(PWBASTColumnTypeOption new
				expression:
					(PWBASTExpression new
						expression:
							(PWBASTExpressionTerm new
								expressionTerm:
									(PWBASTFunctionInvocation new
										defaultVariable: nil;
										functionName:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'char';
												startPosition: 6;
												stopPosition: 9;
												yourself);
										functionArguments:
											(PWBASTFunctionArguments new
												functionArguments:
													{(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '8';
																				startPosition: 11;
																				stopPosition: 11;
																				yourself);
																		startPosition: 11;
																		stopPosition: 11;
																		yourself);
																expressionAction: nil;
																startPosition: 11;
																stopPosition: 11;
																yourself);
														startPosition: 11;
														stopPosition: 11;
														yourself)};
												startPosition: 10;
												stopPosition: 12;
												yourself);
										startPosition: 6;
										stopPosition: 12;
										yourself);
								startPosition: 6;
								stopPosition: 12;
								yourself);
						expressionAction: nil;
						startPosition: 6;
						stopPosition: 12;
						yourself);
				startPosition: 1;
				stopPosition: 12;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testColumnTypeOption2 [
	<generated>
	self
		assert: (self parse: 'type=long' rule: #columnTypeOption)
		equals:
			(PWBASTColumnTypeOption new
				expression:
					(PWBASTExpression new
						expression:
							(PWBASTExpressionTerm new
								expressionTerm:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTBasicType new
												basicType: 'long';
												startPosition: 6;
												stopPosition: 9;
												yourself);
										startPosition: 6;
										stopPosition: 9;
										yourself);
								startPosition: 6;
								stopPosition: 9;
								yourself);
						expressionAction: nil;
						startPosition: 6;
						stopPosition: 9;
						yourself);
				startPosition: 1;
				stopPosition: 9;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testDataComponent1 [
	<generated>
	self
		assert:
			(self
				parse: 'data( 1001,"CRP", 84438,"CRPS", 309875,"CRCC", 309881,"CRCCS",)'
				rule: #dataComponent)
		equals:
			(PWBASTDataComponent new
				dataComponent: 'data( 1001,"CRP", 84438,"CRPS", 309875,"CRCC", 309881,"CRCCS",)';
				startPosition: 1;
				stopPosition: 63;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExport1 [
	<generated>
	self
		assert: (self parse: 'export.xhtml()' rule: #export)
		equals:
			(PWBASTExport new
				formatType:
					(PWBASTFormatType new
						formatType: 'xhtml';
						startPosition: 8;
						stopPosition: 12;
						yourself);
				parameters:
					(PWBASTParameters new
						options: nil;
						startPosition: 13;
						stopPosition: 14;
						yourself);
				startPosition: 1;
				stopPosition: 14;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExport2 [
	<generated>
	self
		assert:
			(self
				parse: 'export.xml(headgroups="1" includewhitespace="0" metadatatype=0 savemetadata=0 )'
				rule: #export)
		equals:
			(PWBASTExport new
				formatType:
					(PWBASTFormatType new
						formatType: 'xml';
						startPosition: 8;
						stopPosition: 10;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'headgroups';
																				startPosition: 12;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 12;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 12;
																stopPosition: 21;
																yourself);
														startPosition: 12;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 23;
																				stopPosition: 25;
																				yourself);
																		startPosition: 23;
																		stopPosition: 25;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 25;
																yourself);
														startPosition: 22;
														stopPosition: 25;
														yourself);
												startPosition: 12;
												stopPosition: 25;
												yourself);
										startPosition: 12;
										stopPosition: 25;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'includewhitespace';
																				startPosition: 27;
																				stopPosition: 43;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 27;
																		stopPosition: 43;
																		yourself);
																arrayPosition: nil;
																startPosition: 27;
																stopPosition: 43;
																yourself);
														startPosition: 27;
														stopPosition: 43;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 45;
																				stopPosition: 47;
																				yourself);
																		startPosition: 45;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 45;
																stopPosition: 47;
																yourself);
														startPosition: 44;
														stopPosition: 47;
														yourself);
												startPosition: 27;
												stopPosition: 47;
												yourself);
										startPosition: 27;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'metadatatype';
																				startPosition: 49;
																				stopPosition: 60;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 60;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 60;
																yourself);
														startPosition: 49;
														stopPosition: 60;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 62;
																				stopPosition: 62;
																				yourself);
																		startPosition: 62;
																		stopPosition: 62;
																		yourself);
																expressionAction: nil;
																startPosition: 62;
																stopPosition: 62;
																yourself);
														startPosition: 61;
														stopPosition: 62;
														yourself);
												startPosition: 49;
												stopPosition: 62;
												yourself);
										startPosition: 49;
										stopPosition: 62;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'savemetadata';
																				startPosition: 64;
																				stopPosition: 75;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 64;
																		stopPosition: 75;
																		yourself);
																arrayPosition: nil;
																startPosition: 64;
																stopPosition: 75;
																yourself);
														startPosition: 64;
														stopPosition: 75;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 77;
																				stopPosition: 77;
																				yourself);
																		startPosition: 77;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 77;
																stopPosition: 77;
																yourself);
														startPosition: 76;
														stopPosition: 77;
														yourself);
												startPosition: 64;
												stopPosition: 77;
												yourself);
										startPosition: 64;
										stopPosition: 77;
										yourself)};
								startPosition: 12;
								stopPosition: 77;
								yourself);
						startPosition: 11;
						stopPosition: 79;
						yourself);
				startPosition: 1;
				stopPosition: 79;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExport3 [
	<generated>
	self
		assert:
			(self
				parse: 'export.pdf(method=0 distill.custompostscript="0" xslfop.print="0" )'
				rule: #export)
		equals:
			(PWBASTExport new
				formatType:
					(PWBASTFormatType new
						formatType: 'pdf';
						startPosition: 8;
						stopPosition: 10;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'method';
																				startPosition: 12;
																				stopPosition: 17;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 12;
																		stopPosition: 17;
																		yourself);
																arrayPosition: nil;
																startPosition: 12;
																stopPosition: 17;
																yourself);
														startPosition: 12;
														stopPosition: 17;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 19;
																				stopPosition: 19;
																				yourself);
																		startPosition: 19;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 19;
																stopPosition: 19;
																yourself);
														startPosition: 18;
														stopPosition: 19;
														yourself);
												startPosition: 12;
												stopPosition: 19;
												yourself);
										startPosition: 12;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'distill';
																				startPosition: 21;
																				stopPosition: 27;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 27;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 27;
																yourself);
														startPosition: 21;
														stopPosition: 27;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'custompostscript';
																		startPosition: 29;
																		stopPosition: 44;
																		yourself);
																arrayInformation: nil;
																startPosition: 28;
																stopPosition: 44;
																yourself);
														expressionAction: nil;
														startPosition: 28;
														stopPosition: 44;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 46;
																				stopPosition: 48;
																				yourself);
																		startPosition: 46;
																		stopPosition: 48;
																		yourself);
																expressionAction: nil;
																startPosition: 46;
																stopPosition: 48;
																yourself);
														startPosition: 45;
														stopPosition: 48;
														yourself);
												startPosition: 21;
												stopPosition: 48;
												yourself);
										startPosition: 21;
										stopPosition: 48;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'xslfop';
																				startPosition: 50;
																				stopPosition: 55;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 50;
																		stopPosition: 55;
																		yourself);
																arrayPosition: nil;
																startPosition: 50;
																stopPosition: 55;
																yourself);
														startPosition: 50;
														stopPosition: 55;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'print';
																		startPosition: 57;
																		stopPosition: 61;
																		yourself);
																arrayInformation: nil;
																startPosition: 56;
																stopPosition: 61;
																yourself);
														expressionAction: nil;
														startPosition: 56;
														stopPosition: 61;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 63;
																				stopPosition: 65;
																				yourself);
																		startPosition: 63;
																		stopPosition: 65;
																		yourself);
																expressionAction: nil;
																startPosition: 63;
																stopPosition: 65;
																yourself);
														startPosition: 62;
														stopPosition: 65;
														yourself);
												startPosition: 50;
												stopPosition: 65;
												yourself);
										startPosition: 50;
										stopPosition: 65;
										yourself)};
								startPosition: 12;
								stopPosition: 65;
								yourself);
						startPosition: 11;
						stopPosition: 67;
						yourself);
				startPosition: 1;
				stopPosition: 67;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression1 [
	<generated>
	self
		assert: (self parse: '(("al_chq_no", number))' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTParenthesedExpression new
						expression:
							(PWBASTExpression new
								expression:
									(PWBASTParenthesedArray new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTString new
																string: '"al_chq_no"';
																startPosition: 3;
																stopPosition: 13;
																yourself);
														startPosition: 3;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												startPosition: 3;
												stopPosition: 13;
												yourself);
										expressions:
											(OrderedCollection
												withAll:
													{(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'number';
																								startPosition: 16;
																								stopPosition: 21;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 16;
																						stopPosition: 21;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 16;
																				stopPosition: 21;
																				yourself);
																		startPosition: 16;
																		stopPosition: 21;
																		yourself);
																startPosition: 16;
																stopPosition: 21;
																yourself);
														expressionAction: nil;
														startPosition: 16;
														stopPosition: 21;
														yourself)});
										startPosition: 2;
										stopPosition: 22;
										yourself);
								expressionAction: nil;
								startPosition: 2;
								stopPosition: 22;
								yourself);
						startPosition: 1;
						stopPosition: 23;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 23;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression2 [
	<generated>
	self
		assert: (self parse: 'parent.width - 100' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTOperatorExpression new
						left:
							(PWBASTExpressionTerm new
								expressionTerm:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'parent';
																startPosition: 1;
																stopPosition: 6;
																yourself);
														arrayDefinition: nil;
														startPosition: 1;
														stopPosition: 6;
														yourself);
												arrayPosition: nil;
												startPosition: 1;
												stopPosition: 6;
												yourself);
										startPosition: 1;
										stopPosition: 6;
										yourself);
								startPosition: 1;
								stopPosition: 6;
								yourself);
						expressionAction:
							(PWBASTExpressionAction new
								action:
									(PWBASTAttributeAccess new
										uncheckedIdentifier:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'width';
												startPosition: 8;
												stopPosition: 12;
												yourself);
										arrayInformation: nil;
										startPosition: 7;
										stopPosition: 12;
										yourself);
								expressionAction: nil;
								startPosition: 7;
								stopPosition: 12;
								yourself);
						right:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTNumber new
												number: '100';
												startPosition: 16;
												stopPosition: 18;
												yourself);
										startPosition: 16;
										stopPosition: 18;
										yourself);
								expressionAction: nil;
								startPosition: 16;
								stopPosition: 18;
								yourself);
						startPosition: 1;
						stopPosition: 18;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 18;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression3 [
	<generated>
	self
		assert: (self parse: '1 = 1' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTOperatorExpression new
						left:
							(PWBASTExpressionTerm new
								expressionTerm:
									(PWBASTNumber new
										number: '1';
										startPosition: 1;
										stopPosition: 1;
										yourself);
								startPosition: 1;
								stopPosition: 1;
								yourself);
						expressionAction: nil;
						right:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTNumber new
												number: '1';
												startPosition: 5;
												stopPosition: 5;
												yourself);
										startPosition: 5;
										stopPosition: 5;
										yourself);
								expressionAction: nil;
								startPosition: 5;
								stopPosition: 5;
								yourself);
						startPosition: 1;
						stopPosition: 5;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 5;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression4 [
	<generated>
	self
		assert: (self parse: 'not isValid(gw_utile)' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTExpressionTerm new
						expressionTerm:
							(PWBASTNotExpression new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTFunctionInvocation new
														defaultVariable: nil;
														functionName:
															(PWBASTUncheckedIdentifier new
																uncheckedIdentifier: 'isValid';
																startPosition: 5;
																stopPosition: 11;
																yourself);
														functionArguments:
															(PWBASTFunctionArguments new
																functionArguments:
																	{(PWBASTFunctionArgument new
																		argumentOption: nil;
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTAccessOrType new
																								accessOrType:
																									(PWBASTAccess new
																										accessed:
																											(PWBASTVariable new
																												identifier:
																													(PWBASTIdentifier new
																														identifier: 'gw_utile';
																														startPosition: 13;
																														stopPosition: 20;
																														yourself);
																												arrayDefinition: nil;
																												startPosition: 13;
																												stopPosition: 20;
																												yourself);
																										arrayPosition: nil;
																										startPosition: 13;
																										stopPosition: 20;
																										yourself);
																								startPosition: 13;
																								stopPosition: 20;
																								yourself);
																						startPosition: 13;
																						stopPosition: 20;
																						yourself);
																				expressionAction: nil;
																				startPosition: 13;
																				stopPosition: 20;
																				yourself);
																		startPosition: 13;
																		stopPosition: 20;
																		yourself)};
																startPosition: 12;
																stopPosition: 21;
																yourself);
														startPosition: 5;
														stopPosition: 21;
														yourself);
												startPosition: 5;
												stopPosition: 21;
												yourself);
										expressionAction: nil;
										startPosition: 5;
										stopPosition: 21;
										yourself);
								startPosition: 1;
								stopPosition: 21;
								yourself);
						startPosition: 1;
						stopPosition: 21;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 21;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression5 [
	<generated>
	self
		assert: (self parse: '0.00' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTExpressionTerm new
						expressionTerm:
							(PWBASTNumber new
								number: '0.00';
								startPosition: 1;
								stopPosition: 4;
								yourself);
						startPosition: 1;
						stopPosition: 4;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 4;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression6 [
	<generated>
	self
		assert: (self parse: 'This' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTExpressionTerm new
						expressionTerm:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTSpecialVariable new
												this:
													(PWBASTThis new
														this: 'This';
														startPosition: 1;
														stopPosition: 4;
														yourself);
												startPosition: 1;
												stopPosition: 4;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 4;
										yourself);
								startPosition: 1;
								stopPosition: 4;
								yourself);
						startPosition: 1;
						stopPosition: 4;
						yourself);
				expressionAction: nil;
				startPosition: 1;
				stopPosition: 4;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression7 [
	<generated>
	self
		assert:
			(self
				parse: 'gw_utile. wf_cre_rdg(ls_null, il_org_no, "CLO_LET", today(), string(id_date_ref,"YYYY-MM-DD"), string(id_date_ref,"YYYY-MM-DD"), 1)'
				rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTExpressionTerm new
						expressionTerm:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'gw_utile';
														startPosition: 1;
														stopPosition: 8;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 8;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 8;
										yourself);
								startPosition: 1;
								stopPosition: 8;
								yourself);
						startPosition: 1;
						stopPosition: 8;
						yourself);
				expressionAction:
					(PWBASTExpressionAction new
						action:
							(PWBASTMethodInvocation new
								methodInvocation:
									(PWBASTRegularMethodInvocation new
										uncheckedIdentifier:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'wf_cre_rdg';
												startPosition: 11;
												stopPosition: 20;
												yourself);
										functionArguments:
											(PWBASTFunctionArguments new
												functionArguments:
													{(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'ls_null';
																										startPosition: 22;
																										stopPosition: 28;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 22;
																								stopPosition: 28;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 22;
																						stopPosition: 28;
																						yourself);
																				startPosition: 22;
																				stopPosition: 28;
																				yourself);
																		startPosition: 22;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 22;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'il_org_no';
																										startPosition: 31;
																										stopPosition: 39;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 31;
																								stopPosition: 39;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 31;
																						stopPosition: 39;
																						yourself);
																				startPosition: 31;
																				stopPosition: 39;
																				yourself);
																		startPosition: 31;
																		stopPosition: 39;
																		yourself);
																expressionAction: nil;
																startPosition: 31;
																stopPosition: 39;
																yourself);
														startPosition: 31;
														stopPosition: 39;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"CLO_LET"';
																				startPosition: 42;
																				stopPosition: 50;
																				yourself);
																		startPosition: 42;
																		stopPosition: 50;
																		yourself);
																expressionAction: nil;
																startPosition: 42;
																stopPosition: 50;
																yourself);
														startPosition: 42;
														stopPosition: 50;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTFunctionInvocation new
																				defaultVariable: nil;
																				functionName:
																					(PWBASTUncheckedIdentifier new
																						uncheckedIdentifier: 'today';
																						startPosition: 53;
																						stopPosition: 57;
																						yourself);
																				functionArguments:
																					(PWBASTFunctionArguments new
																						functionArguments: nil;
																						startPosition: 58;
																						stopPosition: 59;
																						yourself);
																				startPosition: 53;
																				stopPosition: 59;
																				yourself);
																		startPosition: 53;
																		stopPosition: 59;
																		yourself);
																expressionAction: nil;
																startPosition: 53;
																stopPosition: 59;
																yourself);
														startPosition: 53;
														stopPosition: 59;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTFunctionInvocation new
																				defaultVariable: nil;
																				functionName:
																					(PWBASTUncheckedIdentifier new
																						uncheckedIdentifier: 'string';
																						startPosition: 62;
																						stopPosition: 67;
																						yourself);
																				functionArguments:
																					(PWBASTFunctionArguments new
																						functionArguments:
																							{(PWBASTFunctionArgument new
																								argumentOption: nil;
																								expression:
																									(PWBASTExpression new
																										expression:
																											(PWBASTExpressionTerm new
																												expressionTerm:
																													(PWBASTAccessOrType new
																														accessOrType:
																															(PWBASTAccess new
																																accessed:
																																	(PWBASTVariable new
																																		identifier:
																																			(PWBASTIdentifier new
																																				identifier: 'id_date_ref';
																																				startPosition: 69;
																																				stopPosition: 79;
																																				yourself);
																																		arrayDefinition: nil;
																																		startPosition: 69;
																																		stopPosition: 79;
																																		yourself);
																																arrayPosition: nil;
																																startPosition: 69;
																																stopPosition: 79;
																																yourself);
																														startPosition: 69;
																														stopPosition: 79;
																														yourself);
																												startPosition: 69;
																												stopPosition: 79;
																												yourself);
																										expressionAction: nil;
																										startPosition: 69;
																										stopPosition: 79;
																										yourself);
																								startPosition: 69;
																								stopPosition: 79;
																								yourself).
																							(PWBASTFunctionArgument new
																								argumentOption: nil;
																								expression:
																									(PWBASTExpression new
																										expression:
																											(PWBASTExpressionTerm new
																												expressionTerm:
																													(PWBASTString new
																														string: '"YYYY-MM-DD"';
																														startPosition: 81;
																														stopPosition: 92;
																														yourself);
																												startPosition: 81;
																												stopPosition: 92;
																												yourself);
																										expressionAction: nil;
																										startPosition: 81;
																										stopPosition: 92;
																										yourself);
																								startPosition: 81;
																								stopPosition: 92;
																								yourself)};
																						startPosition: 68;
																						stopPosition: 93;
																						yourself);
																				startPosition: 62;
																				stopPosition: 93;
																				yourself);
																		startPosition: 62;
																		stopPosition: 93;
																		yourself);
																expressionAction: nil;
																startPosition: 62;
																stopPosition: 93;
																yourself);
														startPosition: 62;
														stopPosition: 93;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTFunctionInvocation new
																				defaultVariable: nil;
																				functionName:
																					(PWBASTUncheckedIdentifier new
																						uncheckedIdentifier: 'string';
																						startPosition: 96;
																						stopPosition: 101;
																						yourself);
																				functionArguments:
																					(PWBASTFunctionArguments new
																						functionArguments:
																							{(PWBASTFunctionArgument new
																								argumentOption: nil;
																								expression:
																									(PWBASTExpression new
																										expression:
																											(PWBASTExpressionTerm new
																												expressionTerm:
																													(PWBASTAccessOrType new
																														accessOrType:
																															(PWBASTAccess new
																																accessed:
																																	(PWBASTVariable new
																																		identifier:
																																			(PWBASTIdentifier new
																																				identifier: 'id_date_ref';
																																				startPosition: 103;
																																				stopPosition: 113;
																																				yourself);
																																		arrayDefinition: nil;
																																		startPosition: 103;
																																		stopPosition: 113;
																																		yourself);
																																arrayPosition: nil;
																																startPosition: 103;
																																stopPosition: 113;
																																yourself);
																														startPosition: 103;
																														stopPosition: 113;
																														yourself);
																												startPosition: 103;
																												stopPosition: 113;
																												yourself);
																										expressionAction: nil;
																										startPosition: 103;
																										stopPosition: 113;
																										yourself);
																								startPosition: 103;
																								stopPosition: 113;
																								yourself).
																							(PWBASTFunctionArgument new
																								argumentOption: nil;
																								expression:
																									(PWBASTExpression new
																										expression:
																											(PWBASTExpressionTerm new
																												expressionTerm:
																													(PWBASTString new
																														string: '"YYYY-MM-DD"';
																														startPosition: 115;
																														stopPosition: 126;
																														yourself);
																												startPosition: 115;
																												stopPosition: 126;
																												yourself);
																										expressionAction: nil;
																										startPosition: 115;
																										stopPosition: 126;
																										yourself);
																								startPosition: 115;
																								stopPosition: 126;
																								yourself)};
																						startPosition: 102;
																						stopPosition: 127;
																						yourself);
																				startPosition: 96;
																				stopPosition: 127;
																				yourself);
																		startPosition: 96;
																		stopPosition: 127;
																		yourself);
																expressionAction: nil;
																startPosition: 96;
																stopPosition: 127;
																yourself);
														startPosition: 96;
														stopPosition: 127;
														yourself).
													(PWBASTFunctionArgument new
														argumentOption: nil;
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '1';
																				startPosition: 130;
																				stopPosition: 130;
																				yourself);
																		startPosition: 130;
																		stopPosition: 130;
																		yourself);
																expressionAction: nil;
																startPosition: 130;
																stopPosition: 130;
																yourself);
														startPosition: 130;
														stopPosition: 130;
														yourself)};
												startPosition: 21;
												stopPosition: 131;
												yourself);
										startPosition: 9;
										stopPosition: 131;
										yourself);
								startPosition: 9;
								stopPosition: 131;
								yourself);
						expressionAction: nil;
						startPosition: 9;
						stopPosition: 131;
						yourself);
				startPosition: 1;
				stopPosition: 131;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testExpression8 [
	<generated>
	self
		assert: (self parse: 'this.dw_liste' rule: #expression)
		equals:
			(PWBASTExpression new
				expression:
					(PWBASTExpressionTerm new
						expressionTerm:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTSpecialVariable new
												this:
													(PWBASTThis new
														this: 'this';
														startPosition: 1;
														stopPosition: 4;
														yourself);
												startPosition: 1;
												stopPosition: 4;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 4;
										yourself);
								startPosition: 1;
								stopPosition: 4;
								yourself);
						startPosition: 1;
						stopPosition: 4;
						yourself);
				expressionAction:
					(PWBASTExpressionAction new
						action:
							(PWBASTAttributeAccess new
								uncheckedIdentifier:
									(PWBASTUncheckedIdentifier new
										uncheckedIdentifier: 'dw_liste';
										startPosition: 6;
										stopPosition: 13;
										yourself);
								arrayInformation: nil;
								startPosition: 5;
								stopPosition: 13;
								yourself);
						expressionAction: nil;
						startPosition: 5;
						stopPosition: 13;
						yourself);
				startPosition: 1;
				stopPosition: 13;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator1 [
	<generated>
	self
		assert:
			(self
				parse: 'htmlgen(clientevents="1" clientvalidation="1" clientcomputedfields="1" clientformatting="0" clientscriptable="0" generatejavascript="1" encodeselflinkargs="1" netscapelayers="0" pagingmethod=0 generatedddwframes="1" )'
				rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'htmlgen';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientevents';
																				startPosition: 9;
																				stopPosition: 20;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 20;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 20;
																yourself);
														startPosition: 9;
														stopPosition: 20;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 22;
																				stopPosition: 24;
																				yourself);
																		startPosition: 22;
																		stopPosition: 24;
																		yourself);
																expressionAction: nil;
																startPosition: 22;
																stopPosition: 24;
																yourself);
														startPosition: 21;
														stopPosition: 24;
														yourself);
												startPosition: 9;
												stopPosition: 24;
												yourself);
										startPosition: 9;
										stopPosition: 24;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientvalidation';
																				startPosition: 26;
																				stopPosition: 41;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 26;
																		stopPosition: 41;
																		yourself);
																arrayPosition: nil;
																startPosition: 26;
																stopPosition: 41;
																yourself);
														startPosition: 26;
														stopPosition: 41;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 43;
																				stopPosition: 45;
																				yourself);
																		startPosition: 43;
																		stopPosition: 45;
																		yourself);
																expressionAction: nil;
																startPosition: 43;
																stopPosition: 45;
																yourself);
														startPosition: 42;
														stopPosition: 45;
														yourself);
												startPosition: 26;
												stopPosition: 45;
												yourself);
										startPosition: 26;
										stopPosition: 45;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientcomputedfields';
																				startPosition: 47;
																				stopPosition: 66;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 47;
																		stopPosition: 66;
																		yourself);
																arrayPosition: nil;
																startPosition: 47;
																stopPosition: 66;
																yourself);
														startPosition: 47;
														stopPosition: 66;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 68;
																				stopPosition: 70;
																				yourself);
																		startPosition: 68;
																		stopPosition: 70;
																		yourself);
																expressionAction: nil;
																startPosition: 68;
																stopPosition: 70;
																yourself);
														startPosition: 67;
														stopPosition: 70;
														yourself);
												startPosition: 47;
												stopPosition: 70;
												yourself);
										startPosition: 47;
										stopPosition: 70;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientformatting';
																				startPosition: 72;
																				stopPosition: 87;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 72;
																		stopPosition: 87;
																		yourself);
																arrayPosition: nil;
																startPosition: 72;
																stopPosition: 87;
																yourself);
														startPosition: 72;
														stopPosition: 87;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 89;
																				stopPosition: 91;
																				yourself);
																		startPosition: 89;
																		stopPosition: 91;
																		yourself);
																expressionAction: nil;
																startPosition: 89;
																stopPosition: 91;
																yourself);
														startPosition: 88;
														stopPosition: 91;
														yourself);
												startPosition: 72;
												stopPosition: 91;
												yourself);
										startPosition: 72;
										stopPosition: 91;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientscriptable';
																				startPosition: 93;
																				stopPosition: 108;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 93;
																		stopPosition: 108;
																		yourself);
																arrayPosition: nil;
																startPosition: 93;
																stopPosition: 108;
																yourself);
														startPosition: 93;
														stopPosition: 108;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 110;
																				stopPosition: 112;
																				yourself);
																		startPosition: 110;
																		stopPosition: 112;
																		yourself);
																expressionAction: nil;
																startPosition: 110;
																stopPosition: 112;
																yourself);
														startPosition: 109;
														stopPosition: 112;
														yourself);
												startPosition: 93;
												stopPosition: 112;
												yourself);
										startPosition: 93;
										stopPosition: 112;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'generatejavascript';
																				startPosition: 114;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 114;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 114;
																stopPosition: 131;
																yourself);
														startPosition: 114;
														stopPosition: 131;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 133;
																				stopPosition: 135;
																				yourself);
																		startPosition: 133;
																		stopPosition: 135;
																		yourself);
																expressionAction: nil;
																startPosition: 133;
																stopPosition: 135;
																yourself);
														startPosition: 132;
														stopPosition: 135;
														yourself);
												startPosition: 114;
												stopPosition: 135;
												yourself);
										startPosition: 114;
										stopPosition: 135;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'encodeselflinkargs';
																				startPosition: 137;
																				stopPosition: 154;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 137;
																		stopPosition: 154;
																		yourself);
																arrayPosition: nil;
																startPosition: 137;
																stopPosition: 154;
																yourself);
														startPosition: 137;
														stopPosition: 154;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 156;
																				stopPosition: 158;
																				yourself);
																		startPosition: 156;
																		stopPosition: 158;
																		yourself);
																expressionAction: nil;
																startPosition: 156;
																stopPosition: 158;
																yourself);
														startPosition: 155;
														stopPosition: 158;
														yourself);
												startPosition: 137;
												stopPosition: 158;
												yourself);
										startPosition: 137;
										stopPosition: 158;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'netscapelayers';
																				startPosition: 160;
																				stopPosition: 173;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 160;
																		stopPosition: 173;
																		yourself);
																arrayPosition: nil;
																startPosition: 160;
																stopPosition: 173;
																yourself);
														startPosition: 160;
														stopPosition: 173;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 175;
																				stopPosition: 177;
																				yourself);
																		startPosition: 175;
																		stopPosition: 177;
																		yourself);
																expressionAction: nil;
																startPosition: 175;
																stopPosition: 177;
																yourself);
														startPosition: 174;
														stopPosition: 177;
														yourself);
												startPosition: 160;
												stopPosition: 177;
												yourself);
										startPosition: 160;
										stopPosition: 177;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pagingmethod';
																				startPosition: 179;
																				stopPosition: 190;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 179;
																		stopPosition: 190;
																		yourself);
																arrayPosition: nil;
																startPosition: 179;
																stopPosition: 190;
																yourself);
														startPosition: 179;
														stopPosition: 190;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 192;
																				stopPosition: 192;
																				yourself);
																		startPosition: 192;
																		stopPosition: 192;
																		yourself);
																expressionAction: nil;
																startPosition: 192;
																stopPosition: 192;
																yourself);
														startPosition: 191;
														stopPosition: 192;
														yourself);
												startPosition: 179;
												stopPosition: 192;
												yourself);
										startPosition: 179;
										stopPosition: 192;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'generatedddwframes';
																				startPosition: 194;
																				stopPosition: 211;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 194;
																		stopPosition: 211;
																		yourself);
																arrayPosition: nil;
																startPosition: 194;
																stopPosition: 211;
																yourself);
														startPosition: 194;
														stopPosition: 211;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 213;
																				stopPosition: 215;
																				yourself);
																		startPosition: 213;
																		stopPosition: 215;
																		yourself);
																expressionAction: nil;
																startPosition: 213;
																stopPosition: 215;
																yourself);
														startPosition: 212;
														stopPosition: 215;
														yourself);
												startPosition: 194;
												stopPosition: 215;
												yourself);
										startPosition: 194;
										stopPosition: 215;
										yourself)};
								startPosition: 9;
								stopPosition: 215;
								yourself);
						startPosition: 8;
						stopPosition: 217;
						yourself);
				startPosition: 1;
				stopPosition: 217;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator2 [
	<generated>
	self
		assert: (self parse: 'xhtmlgen()' rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'xhtmlgen';
						startPosition: 1;
						stopPosition: 8;
						yourself);
				parameters:
					(PWBASTParameters new
						options: nil;
						startPosition: 9;
						stopPosition: 10;
						yourself);
				startPosition: 1;
				stopPosition: 10;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator3 [
	<generated>
	self
		assert: (self parse: 'cssgen(sessionspecific="0" )' rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'cssgen';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'sessionspecific';
																				startPosition: 8;
																				stopPosition: 22;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 22;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 22;
																yourself);
														startPosition: 8;
														stopPosition: 22;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 24;
																				stopPosition: 26;
																				yourself);
																		startPosition: 24;
																		stopPosition: 26;
																		yourself);
																expressionAction: nil;
																startPosition: 24;
																stopPosition: 26;
																yourself);
														startPosition: 23;
														stopPosition: 26;
														yourself);
												startPosition: 8;
												stopPosition: 26;
												yourself);
										startPosition: 8;
										stopPosition: 26;
										yourself)};
								startPosition: 8;
								stopPosition: 26;
								yourself);
						startPosition: 7;
						stopPosition: 28;
						yourself);
				startPosition: 1;
				stopPosition: 28;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator4 [
	<generated>
	self
		assert: (self parse: 'xmlgen(inline="0" )' rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'xmlgen';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'inline';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 15;
																				stopPosition: 17;
																				yourself);
																		startPosition: 15;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 17;
																yourself);
														startPosition: 14;
														stopPosition: 17;
														yourself);
												startPosition: 8;
												stopPosition: 17;
												yourself);
										startPosition: 8;
										stopPosition: 17;
										yourself)};
								startPosition: 8;
								stopPosition: 17;
								yourself);
						startPosition: 7;
						stopPosition: 19;
						yourself);
				startPosition: 1;
				stopPosition: 19;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator5 [
	<generated>
	self
		assert: (self parse: 'xsltgen()' rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'xsltgen';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options: nil;
						startPosition: 8;
						stopPosition: 9;
						yourself);
				startPosition: 1;
				stopPosition: 9;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGenerator6 [
	<generated>
	self
		assert: (self parse: 'jsgen()' rule: #generator)
		equals:
			(PWBASTGenerator new
				generatorToken:
					(PWBASTGeneratorToken new
						generatorToken: 'jsgen';
						startPosition: 1;
						stopPosition: 5;
						yourself);
				parameters:
					(PWBASTParameters new
						options: nil;
						startPosition: 6;
						stopPosition: 7;
						yourself);
				startPosition: 1;
				stopPosition: 7;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent1 [
	<generated>
	self
		assert:
			(self
				parse: 'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'ellipse';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 9;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 12;
																yourself);
														startPosition: 9;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 14;
																										stopPosition: 19;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 14;
																								stopPosition: 19;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 14;
																						stopPosition: 19;
																						yourself);
																				startPosition: 14;
																				stopPosition: 19;
																				yourself);
																		startPosition: 14;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 19;
																yourself);
														startPosition: 13;
														stopPosition: 19;
														yourself);
												startPosition: 9;
												stopPosition: 19;
												yourself);
										startPosition: 9;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 21;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 21;
																yourself);
														startPosition: 21;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2350"';
																				startPosition: 23;
																				stopPosition: 28;
																				yourself);
																		startPosition: 23;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself);
												startPosition: 21;
												stopPosition: 28;
												yourself);
										startPosition: 21;
										stopPosition: 28;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 30;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 30;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 30;
																stopPosition: 30;
																yourself);
														startPosition: 30;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"32"';
																				startPosition: 32;
																				stopPosition: 35;
																				yourself);
																		startPosition: 32;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 35;
																yourself);
														startPosition: 31;
														stopPosition: 35;
														yourself);
												startPosition: 30;
												stopPosition: 35;
												yourself);
										startPosition: 30;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 37;
																				stopPosition: 42;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 42;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 42;
																yourself);
														startPosition: 37;
														stopPosition: 42;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"36"';
																				startPosition: 44;
																				stopPosition: 47;
																				yourself);
																		startPosition: 44;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 44;
																stopPosition: 47;
																yourself);
														startPosition: 43;
														stopPosition: 47;
														yourself);
												startPosition: 37;
												stopPosition: 47;
												yourself);
										startPosition: 37;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 49;
																				stopPosition: 53;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 53;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 53;
																yourself);
														startPosition: 49;
														stopPosition: 53;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"41"';
																				startPosition: 55;
																				stopPosition: 58;
																				yourself);
																		startPosition: 55;
																		stopPosition: 58;
																		yourself);
																expressionAction: nil;
																startPosition: 55;
																stopPosition: 58;
																yourself);
														startPosition: 54;
														stopPosition: 58;
														yourself);
												startPosition: 49;
												stopPosition: 58;
												yourself);
										startPosition: 49;
										stopPosition: 58;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'tem_dtc';
																								startPosition: 66;
																								stopPosition: 72;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 66;
																						stopPosition: 72;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 66;
																				stopPosition: 72;
																				yourself);
																		startPosition: 66;
																		stopPosition: 72;
																		yourself);
																startPosition: 66;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 66;
														stopPosition: 72;
														yourself);
												startPosition: 61;
												stopPosition: 72;
												yourself);
										startPosition: 61;
										stopPosition: 72;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 74;
																				stopPosition: 80;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 74;
																		stopPosition: 80;
																		yourself);
																arrayPosition: nil;
																startPosition: 74;
																stopPosition: 80;
																yourself);
														startPosition: 74;
														stopPosition: 80;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1~tif(isNull(liq_dtc),0,1)"';
																				startPosition: 82;
																				stopPosition: 109;
																				yourself);
																		startPosition: 82;
																		stopPosition: 109;
																		yourself);
																expressionAction: nil;
																startPosition: 82;
																stopPosition: 109;
																yourself);
														startPosition: 81;
														stopPosition: 109;
														yourself);
												startPosition: 74;
												stopPosition: 109;
												yourself);
										startPosition: 74;
										stopPosition: 109;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 111;
																				stopPosition: 115;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 111;
																		stopPosition: 115;
																		yourself);
																arrayPosition: nil;
																startPosition: 111;
																stopPosition: 115;
																yourself);
														startPosition: 111;
														stopPosition: 115;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hatch';
																		startPosition: 117;
																		stopPosition: 121;
																		yourself);
																arrayInformation: nil;
																startPosition: 116;
																stopPosition: 121;
																yourself);
														expressionAction: nil;
														startPosition: 116;
														stopPosition: 121;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"6"';
																				startPosition: 123;
																				stopPosition: 125;
																				yourself);
																		startPosition: 123;
																		stopPosition: 125;
																		yourself);
																expressionAction: nil;
																startPosition: 123;
																stopPosition: 125;
																yourself);
														startPosition: 122;
														stopPosition: 125;
														yourself);
												startPosition: 111;
												stopPosition: 125;
												yourself);
										startPosition: 111;
										stopPosition: 125;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 127;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 127;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 127;
																stopPosition: 131;
																yourself);
														startPosition: 127;
														stopPosition: 131;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 133;
																		stopPosition: 137;
																		yourself);
																arrayInformation: nil;
																startPosition: 132;
																stopPosition: 137;
																yourself);
														expressionAction: nil;
														startPosition: 132;
														stopPosition: 137;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 139;
																				stopPosition: 143;
																				yourself);
																		startPosition: 139;
																		stopPosition: 143;
																		yourself);
																expressionAction: nil;
																startPosition: 139;
																stopPosition: 143;
																yourself);
														startPosition: 138;
														stopPosition: 143;
														yourself);
												startPosition: 127;
												stopPosition: 143;
												yourself);
										startPosition: 127;
										stopPosition: 143;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 145;
																				stopPosition: 147;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 145;
																		stopPosition: 147;
																		yourself);
																arrayPosition: nil;
																startPosition: 145;
																stopPosition: 147;
																yourself);
														startPosition: 145;
														stopPosition: 147;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'style';
																		startPosition: 149;
																		stopPosition: 153;
																		yourself);
																arrayInformation: nil;
																startPosition: 148;
																stopPosition: 153;
																yourself);
														expressionAction: nil;
														startPosition: 148;
														stopPosition: 153;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 155;
																				stopPosition: 157;
																				yourself);
																		startPosition: 155;
																		stopPosition: 157;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 157;
																yourself);
														startPosition: 154;
														stopPosition: 157;
														yourself);
												startPosition: 145;
												stopPosition: 157;
												yourself);
										startPosition: 145;
										stopPosition: 157;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 159;
																				stopPosition: 161;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 159;
																		stopPosition: 161;
																		yourself);
																arrayPosition: nil;
																startPosition: 159;
																stopPosition: 161;
																yourself);
														startPosition: 159;
														stopPosition: 161;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'width';
																		startPosition: 163;
																		stopPosition: 167;
																		yourself);
																arrayInformation: nil;
																startPosition: 162;
																stopPosition: 167;
																yourself);
														expressionAction: nil;
														startPosition: 162;
														stopPosition: 167;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"5"';
																				startPosition: 169;
																				stopPosition: 171;
																				yourself);
																		startPosition: 169;
																		stopPosition: 171;
																		yourself);
																expressionAction: nil;
																startPosition: 169;
																stopPosition: 171;
																yourself);
														startPosition: 168;
														stopPosition: 171;
														yourself);
												startPosition: 159;
												stopPosition: 171;
												yourself);
										startPosition: 159;
										stopPosition: 171;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 173;
																				stopPosition: 175;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 173;
																		stopPosition: 175;
																		yourself);
																arrayPosition: nil;
																startPosition: 173;
																stopPosition: 175;
																yourself);
														startPosition: 173;
														stopPosition: 175;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 177;
																		stopPosition: 181;
																		yourself);
																arrayInformation: nil;
																startPosition: 176;
																stopPosition: 181;
																yourself);
														expressionAction: nil;
														startPosition: 176;
														stopPosition: 181;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 183;
																				stopPosition: 187;
																				yourself);
																		startPosition: 183;
																		stopPosition: 187;
																		yourself);
																expressionAction: nil;
																startPosition: 183;
																stopPosition: 187;
																yourself);
														startPosition: 182;
														stopPosition: 187;
														yourself);
												startPosition: 173;
												stopPosition: 187;
												yourself);
										startPosition: 173;
										stopPosition: 187;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 190;
																				stopPosition: 199;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 190;
																		stopPosition: 199;
																		yourself);
																arrayPosition: nil;
																startPosition: 190;
																stopPosition: 199;
																yourself);
														startPosition: 190;
														stopPosition: 199;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'mode';
																		startPosition: 201;
																		stopPosition: 204;
																		yourself);
																arrayInformation: nil;
																startPosition: 200;
																stopPosition: 204;
																yourself);
														expressionAction: nil;
														startPosition: 200;
														stopPosition: 204;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2"';
																				startPosition: 206;
																				stopPosition: 208;
																				yourself);
																		startPosition: 206;
																		stopPosition: 208;
																		yourself);
																expressionAction: nil;
																startPosition: 206;
																stopPosition: 208;
																yourself);
														startPosition: 205;
														stopPosition: 208;
														yourself);
												startPosition: 190;
												stopPosition: 208;
												yourself);
										startPosition: 190;
										stopPosition: 208;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 210;
																				stopPosition: 219;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 210;
																		stopPosition: 219;
																		yourself);
																arrayPosition: nil;
																startPosition: 210;
																stopPosition: 219;
																yourself);
														startPosition: 210;
														stopPosition: 219;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 221;
																		stopPosition: 225;
																		yourself);
																arrayInformation: nil;
																startPosition: 220;
																stopPosition: 225;
																yourself);
														expressionAction: nil;
														startPosition: 220;
														stopPosition: 225;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 227;
																				stopPosition: 229;
																				yourself);
																		startPosition: 227;
																		stopPosition: 229;
																		yourself);
																expressionAction: nil;
																startPosition: 227;
																stopPosition: 229;
																yourself);
														startPosition: 226;
														stopPosition: 229;
														yourself);
												startPosition: 210;
												stopPosition: 229;
												yourself);
										startPosition: 210;
										stopPosition: 229;
										yourself)};
								startPosition: 9;
								stopPosition: 229;
								yourself);
						startPosition: 8;
						stopPosition: 231;
						yourself);
				startPosition: 1;
				stopPosition: 231;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent10 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent11 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent12 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent13 [
	<generated>
	self
		assert:
			(self
				parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'detail';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '92';
																				startPosition: 15;
																				stopPosition: 16;
																				yourself);
																		startPosition: 15;
																		stopPosition: 16;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 16;
																yourself);
														startPosition: 14;
														stopPosition: 16;
														yourself);
												startPosition: 8;
												stopPosition: 16;
												yourself);
										startPosition: 8;
										stopPosition: 16;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 18;
																				stopPosition: 22;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 18;
																		stopPosition: 22;
																		yourself);
																arrayPosition: nil;
																startPosition: 18;
																stopPosition: 22;
																yourself);
														startPosition: 18;
														stopPosition: 22;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 24;
																				stopPosition: 34;
																				yourself);
																		startPosition: 24;
																		stopPosition: 34;
																		yourself);
																expressionAction: nil;
																startPosition: 24;
																stopPosition: 34;
																yourself);
														startPosition: 23;
														stopPosition: 34;
														yourself);
												startPosition: 18;
												stopPosition: 34;
												yourself);
										startPosition: 18;
										stopPosition: 34;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 36;
																				stopPosition: 47;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 36;
																		stopPosition: 47;
																		yourself);
																arrayPosition: nil;
																startPosition: 36;
																stopPosition: 47;
																yourself);
														startPosition: 36;
														stopPosition: 47;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 49;
																				stopPosition: 51;
																				yourself);
																		startPosition: 49;
																		stopPosition: 51;
																		yourself);
																expressionAction: nil;
																startPosition: 49;
																stopPosition: 51;
																yourself);
														startPosition: 48;
														stopPosition: 51;
														yourself);
												startPosition: 36;
												stopPosition: 51;
												yourself);
										startPosition: 36;
										stopPosition: 51;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 53;
																				stopPosition: 60;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 53;
																		stopPosition: 60;
																		yourself);
																arrayPosition: nil;
																startPosition: 53;
																stopPosition: 60;
																yourself);
														startPosition: 53;
														stopPosition: 60;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 62;
																		stopPosition: 66;
																		yourself);
																arrayInformation: nil;
																startPosition: 61;
																stopPosition: 66;
																yourself);
														expressionAction: nil;
														startPosition: 61;
														stopPosition: 66;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 68;
																				stopPosition: 76;
																				yourself);
																		startPosition: 68;
																		stopPosition: 76;
																		yourself);
																expressionAction: nil;
																startPosition: 68;
																stopPosition: 76;
																yourself);
														startPosition: 67;
														stopPosition: 76;
														yourself);
												startPosition: 53;
												stopPosition: 76;
												yourself);
										startPosition: 53;
										stopPosition: 76;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 78;
																				stopPosition: 85;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 78;
																		stopPosition: 85;
																		yourself);
																arrayPosition: nil;
																startPosition: 78;
																stopPosition: 85;
																yourself);
														startPosition: 78;
														stopPosition: 85;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 87;
																		stopPosition: 98;
																		yourself);
																arrayInformation: nil;
																startPosition: 86;
																stopPosition: 98;
																yourself);
														expressionAction: nil;
														startPosition: 86;
														stopPosition: 98;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 100;
																				stopPosition: 102;
																				yourself);
																		startPosition: 100;
																		stopPosition: 102;
																		yourself);
																expressionAction: nil;
																startPosition: 100;
																stopPosition: 102;
																yourself);
														startPosition: 99;
														stopPosition: 102;
														yourself);
												startPosition: 78;
												stopPosition: 102;
												yourself);
										startPosition: 78;
										stopPosition: 102;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 104;
																				stopPosition: 111;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 104;
																		stopPosition: 111;
																		yourself);
																arrayPosition: nil;
																startPosition: 104;
																stopPosition: 111;
																yourself);
														startPosition: 104;
														stopPosition: 111;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 113;
																		stopPosition: 117;
																		yourself);
																arrayInformation: nil;
																startPosition: 112;
																stopPosition: 117;
																yourself);
														expressionAction: nil;
														startPosition: 112;
														stopPosition: 117;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 119;
																				stopPosition: 121;
																				yourself);
																		startPosition: 119;
																		stopPosition: 121;
																		yourself);
																expressionAction: nil;
																startPosition: 119;
																stopPosition: 121;
																yourself);
														startPosition: 118;
														stopPosition: 121;
														yourself);
												startPosition: 104;
												stopPosition: 121;
												yourself);
										startPosition: 104;
										stopPosition: 121;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 123;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 123;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 123;
																stopPosition: 131;
																yourself);
														startPosition: 123;
														stopPosition: 131;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 133;
																				stopPosition: 135;
																				yourself);
																		startPosition: 133;
																		stopPosition: 135;
																		yourself);
																expressionAction: nil;
																startPosition: 133;
																stopPosition: 135;
																yourself);
														startPosition: 132;
														stopPosition: 135;
														yourself);
												startPosition: 123;
												stopPosition: 135;
												yourself);
										startPosition: 123;
										stopPosition: 135;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 137;
																				stopPosition: 144;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 137;
																		stopPosition: 144;
																		yourself);
																arrayPosition: nil;
																startPosition: 137;
																stopPosition: 144;
																yourself);
														startPosition: 137;
														stopPosition: 144;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 146;
																		stopPosition: 155;
																		yourself);
																arrayInformation: nil;
																startPosition: 145;
																stopPosition: 155;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 157;
																				stopPosition: 160;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 156;
																		stopPosition: 160;
																		yourself);
																expressionAction: nil;
																startPosition: 156;
																stopPosition: 160;
																yourself);
														startPosition: 145;
														stopPosition: 160;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 162;
																				stopPosition: 164;
																				yourself);
																		startPosition: 162;
																		stopPosition: 164;
																		yourself);
																expressionAction: nil;
																startPosition: 162;
																stopPosition: 164;
																yourself);
														startPosition: 161;
														stopPosition: 164;
														yourself);
												startPosition: 137;
												stopPosition: 164;
												yourself);
										startPosition: 137;
										stopPosition: 164;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 166;
																				stopPosition: 173;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 166;
																		stopPosition: 173;
																		yourself);
																arrayPosition: nil;
																startPosition: 166;
																stopPosition: 173;
																yourself);
														startPosition: 166;
														stopPosition: 173;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 175;
																		stopPosition: 184;
																		yourself);
																arrayInformation: nil;
																startPosition: 174;
																stopPosition: 184;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 186;
																				stopPosition: 190;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 185;
																		stopPosition: 190;
																		yourself);
																expressionAction: nil;
																startPosition: 185;
																stopPosition: 190;
																yourself);
														startPosition: 174;
														stopPosition: 190;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 192;
																				stopPosition: 194;
																				yourself);
																		startPosition: 192;
																		stopPosition: 194;
																		yourself);
																expressionAction: nil;
																startPosition: 192;
																stopPosition: 194;
																yourself);
														startPosition: 191;
														stopPosition: 194;
														yourself);
												startPosition: 166;
												stopPosition: 194;
												yourself);
										startPosition: 166;
										stopPosition: 194;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 196;
																				stopPosition: 203;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 196;
																		stopPosition: 203;
																		yourself);
																arrayPosition: nil;
																startPosition: 196;
																stopPosition: 203;
																yourself);
														startPosition: 196;
														stopPosition: 203;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 205;
																		stopPosition: 214;
																		yourself);
																arrayInformation: nil;
																startPosition: 204;
																stopPosition: 214;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 216;
																				stopPosition: 221;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 215;
																		stopPosition: 221;
																		yourself);
																expressionAction: nil;
																startPosition: 215;
																stopPosition: 221;
																yourself);
														startPosition: 204;
														stopPosition: 221;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 223;
																				stopPosition: 227;
																				yourself);
																		startPosition: 223;
																		stopPosition: 227;
																		yourself);
																expressionAction: nil;
																startPosition: 223;
																stopPosition: 227;
																yourself);
														startPosition: 222;
														stopPosition: 227;
														yourself);
												startPosition: 196;
												stopPosition: 227;
												yourself);
										startPosition: 196;
										stopPosition: 227;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 229;
																				stopPosition: 236;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 229;
																		stopPosition: 236;
																		yourself);
																arrayPosition: nil;
																startPosition: 229;
																stopPosition: 236;
																yourself);
														startPosition: 229;
														stopPosition: 236;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 238;
																		stopPosition: 242;
																		yourself);
																arrayInformation: nil;
																startPosition: 237;
																stopPosition: 242;
																yourself);
														expressionAction: nil;
														startPosition: 237;
														stopPosition: 242;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 244;
																				stopPosition: 246;
																				yourself);
																		startPosition: 244;
																		stopPosition: 246;
																		yourself);
																expressionAction: nil;
																startPosition: 244;
																stopPosition: 246;
																yourself);
														startPosition: 243;
														stopPosition: 246;
														yourself);
												startPosition: 229;
												stopPosition: 246;
												yourself);
										startPosition: 229;
										stopPosition: 246;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 248;
																				stopPosition: 255;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 248;
																		stopPosition: 255;
																		yourself);
																arrayPosition: nil;
																startPosition: 248;
																stopPosition: 255;
																yourself);
														startPosition: 248;
														stopPosition: 255;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 257;
																		stopPosition: 261;
																		yourself);
																arrayInformation: nil;
																startPosition: 256;
																stopPosition: 261;
																yourself);
														expressionAction: nil;
														startPosition: 256;
														stopPosition: 261;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 263;
																				stopPosition: 267;
																				yourself);
																		startPosition: 263;
																		stopPosition: 267;
																		yourself);
																expressionAction: nil;
																startPosition: 263;
																stopPosition: 267;
																yourself);
														startPosition: 262;
														stopPosition: 267;
														yourself);
												startPosition: 248;
												stopPosition: 267;
												yourself);
										startPosition: 248;
										stopPosition: 267;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 269;
																				stopPosition: 276;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 269;
																		stopPosition: 276;
																		yourself);
																arrayPosition: nil;
																startPosition: 269;
																stopPosition: 276;
																yourself);
														startPosition: 269;
														stopPosition: 276;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 278;
																		stopPosition: 283;
																		yourself);
																arrayInformation: nil;
																startPosition: 277;
																stopPosition: 283;
																yourself);
														expressionAction: nil;
														startPosition: 277;
														stopPosition: 283;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 285;
																				stopPosition: 289;
																				yourself);
																		startPosition: 285;
																		stopPosition: 289;
																		yourself);
																expressionAction: nil;
																startPosition: 285;
																stopPosition: 289;
																yourself);
														startPosition: 284;
														stopPosition: 289;
														yourself);
												startPosition: 269;
												stopPosition: 289;
												yourself);
										startPosition: 269;
										stopPosition: 289;
										yourself)};
								startPosition: 8;
								stopPosition: 289;
								yourself);
						startPosition: 7;
						stopPosition: 291;
						yourself);
				startPosition: 1;
				stopPosition: 291;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent14 [
	<generated>
	self
		assert:
			(self
				parse: 'header(height=160 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'header';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '160';
																				startPosition: 15;
																				stopPosition: 17;
																				yourself);
																		startPosition: 15;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 17;
																yourself);
														startPosition: 14;
														stopPosition: 17;
														yourself);
												startPosition: 8;
												stopPosition: 17;
												yourself);
										startPosition: 8;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 8;
								stopPosition: 290;
								yourself);
						startPosition: 7;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent15 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent16 [
	<generated>
	self
		assert:
			(self
				parse: 'footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'footer';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 15;
																				stopPosition: 15;
																				yourself);
																		startPosition: 15;
																		stopPosition: 15;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 15;
																yourself);
														startPosition: 14;
														stopPosition: 15;
														yourself);
												startPosition: 8;
												stopPosition: 15;
												yourself);
										startPosition: 8;
										stopPosition: 15;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 17;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 17;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 17;
																stopPosition: 21;
																yourself);
														startPosition: 17;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 23;
																				stopPosition: 33;
																				yourself);
																		startPosition: 23;
																		stopPosition: 33;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 33;
																yourself);
														startPosition: 22;
														stopPosition: 33;
														yourself);
												startPosition: 17;
												stopPosition: 33;
												yourself);
										startPosition: 17;
										stopPosition: 33;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 35;
																				stopPosition: 46;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 35;
																		stopPosition: 46;
																		yourself);
																arrayPosition: nil;
																startPosition: 35;
																stopPosition: 46;
																yourself);
														startPosition: 35;
														stopPosition: 46;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 48;
																				stopPosition: 50;
																				yourself);
																		startPosition: 48;
																		stopPosition: 50;
																		yourself);
																expressionAction: nil;
																startPosition: 48;
																stopPosition: 50;
																yourself);
														startPosition: 47;
														stopPosition: 50;
														yourself);
												startPosition: 35;
												stopPosition: 50;
												yourself);
										startPosition: 35;
										stopPosition: 50;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 52;
																				stopPosition: 59;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 52;
																		stopPosition: 59;
																		yourself);
																arrayPosition: nil;
																startPosition: 52;
																stopPosition: 59;
																yourself);
														startPosition: 52;
														stopPosition: 59;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 61;
																		stopPosition: 65;
																		yourself);
																arrayInformation: nil;
																startPosition: 60;
																stopPosition: 65;
																yourself);
														expressionAction: nil;
														startPosition: 60;
														stopPosition: 65;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 67;
																				stopPosition: 75;
																				yourself);
																		startPosition: 67;
																		stopPosition: 75;
																		yourself);
																expressionAction: nil;
																startPosition: 67;
																stopPosition: 75;
																yourself);
														startPosition: 66;
														stopPosition: 75;
														yourself);
												startPosition: 52;
												stopPosition: 75;
												yourself);
										startPosition: 52;
										stopPosition: 75;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 77;
																				stopPosition: 84;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 77;
																		stopPosition: 84;
																		yourself);
																arrayPosition: nil;
																startPosition: 77;
																stopPosition: 84;
																yourself);
														startPosition: 77;
														stopPosition: 84;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 86;
																		stopPosition: 97;
																		yourself);
																arrayInformation: nil;
																startPosition: 85;
																stopPosition: 97;
																yourself);
														expressionAction: nil;
														startPosition: 85;
														stopPosition: 97;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 99;
																				stopPosition: 101;
																				yourself);
																		startPosition: 99;
																		stopPosition: 101;
																		yourself);
																expressionAction: nil;
																startPosition: 99;
																stopPosition: 101;
																yourself);
														startPosition: 98;
														stopPosition: 101;
														yourself);
												startPosition: 77;
												stopPosition: 101;
												yourself);
										startPosition: 77;
										stopPosition: 101;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 103;
																				stopPosition: 110;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 103;
																		stopPosition: 110;
																		yourself);
																arrayPosition: nil;
																startPosition: 103;
																stopPosition: 110;
																yourself);
														startPosition: 103;
														stopPosition: 110;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 112;
																		stopPosition: 116;
																		yourself);
																arrayInformation: nil;
																startPosition: 111;
																stopPosition: 116;
																yourself);
														expressionAction: nil;
														startPosition: 111;
														stopPosition: 116;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 118;
																				stopPosition: 120;
																				yourself);
																		startPosition: 118;
																		stopPosition: 120;
																		yourself);
																expressionAction: nil;
																startPosition: 118;
																stopPosition: 120;
																yourself);
														startPosition: 117;
														stopPosition: 120;
														yourself);
												startPosition: 103;
												stopPosition: 120;
												yourself);
										startPosition: 103;
										stopPosition: 120;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 122;
																				stopPosition: 130;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 122;
																		stopPosition: 130;
																		yourself);
																arrayPosition: nil;
																startPosition: 122;
																stopPosition: 130;
																yourself);
														startPosition: 122;
														stopPosition: 130;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 132;
																				stopPosition: 134;
																				yourself);
																		startPosition: 132;
																		stopPosition: 134;
																		yourself);
																expressionAction: nil;
																startPosition: 132;
																stopPosition: 134;
																yourself);
														startPosition: 131;
														stopPosition: 134;
														yourself);
												startPosition: 122;
												stopPosition: 134;
												yourself);
										startPosition: 122;
										stopPosition: 134;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 136;
																				stopPosition: 143;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 136;
																		stopPosition: 143;
																		yourself);
																arrayPosition: nil;
																startPosition: 136;
																stopPosition: 143;
																yourself);
														startPosition: 136;
														stopPosition: 143;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 145;
																		stopPosition: 154;
																		yourself);
																arrayInformation: nil;
																startPosition: 144;
																stopPosition: 154;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 156;
																				stopPosition: 159;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 155;
																		stopPosition: 159;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 159;
																yourself);
														startPosition: 144;
														stopPosition: 159;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 161;
																				stopPosition: 163;
																				yourself);
																		startPosition: 161;
																		stopPosition: 163;
																		yourself);
																expressionAction: nil;
																startPosition: 161;
																stopPosition: 163;
																yourself);
														startPosition: 160;
														stopPosition: 163;
														yourself);
												startPosition: 136;
												stopPosition: 163;
												yourself);
										startPosition: 136;
										stopPosition: 163;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 165;
																				stopPosition: 172;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 165;
																		stopPosition: 172;
																		yourself);
																arrayPosition: nil;
																startPosition: 165;
																stopPosition: 172;
																yourself);
														startPosition: 165;
														stopPosition: 172;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 174;
																		stopPosition: 183;
																		yourself);
																arrayInformation: nil;
																startPosition: 173;
																stopPosition: 183;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 185;
																				stopPosition: 189;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 184;
																		stopPosition: 189;
																		yourself);
																expressionAction: nil;
																startPosition: 184;
																stopPosition: 189;
																yourself);
														startPosition: 173;
														stopPosition: 189;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 191;
																				stopPosition: 193;
																				yourself);
																		startPosition: 191;
																		stopPosition: 193;
																		yourself);
																expressionAction: nil;
																startPosition: 191;
																stopPosition: 193;
																yourself);
														startPosition: 190;
														stopPosition: 193;
														yourself);
												startPosition: 165;
												stopPosition: 193;
												yourself);
										startPosition: 165;
										stopPosition: 193;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 195;
																				stopPosition: 202;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 195;
																		stopPosition: 202;
																		yourself);
																arrayPosition: nil;
																startPosition: 195;
																stopPosition: 202;
																yourself);
														startPosition: 195;
														stopPosition: 202;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 204;
																		stopPosition: 213;
																		yourself);
																arrayInformation: nil;
																startPosition: 203;
																stopPosition: 213;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 215;
																				stopPosition: 220;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 214;
																		stopPosition: 220;
																		yourself);
																expressionAction: nil;
																startPosition: 214;
																stopPosition: 220;
																yourself);
														startPosition: 203;
														stopPosition: 220;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 222;
																				stopPosition: 226;
																				yourself);
																		startPosition: 222;
																		stopPosition: 226;
																		yourself);
																expressionAction: nil;
																startPosition: 222;
																stopPosition: 226;
																yourself);
														startPosition: 221;
														stopPosition: 226;
														yourself);
												startPosition: 195;
												stopPosition: 226;
												yourself);
										startPosition: 195;
										stopPosition: 226;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 228;
																				stopPosition: 235;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 228;
																		stopPosition: 235;
																		yourself);
																arrayPosition: nil;
																startPosition: 228;
																stopPosition: 235;
																yourself);
														startPosition: 228;
														stopPosition: 235;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 237;
																		stopPosition: 241;
																		yourself);
																arrayInformation: nil;
																startPosition: 236;
																stopPosition: 241;
																yourself);
														expressionAction: nil;
														startPosition: 236;
														stopPosition: 241;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 243;
																				stopPosition: 245;
																				yourself);
																		startPosition: 243;
																		stopPosition: 245;
																		yourself);
																expressionAction: nil;
																startPosition: 243;
																stopPosition: 245;
																yourself);
														startPosition: 242;
														stopPosition: 245;
														yourself);
												startPosition: 228;
												stopPosition: 245;
												yourself);
										startPosition: 228;
										stopPosition: 245;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 247;
																				stopPosition: 254;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 247;
																		stopPosition: 254;
																		yourself);
																arrayPosition: nil;
																startPosition: 247;
																stopPosition: 254;
																yourself);
														startPosition: 247;
														stopPosition: 254;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 256;
																		stopPosition: 260;
																		yourself);
																arrayInformation: nil;
																startPosition: 255;
																stopPosition: 260;
																yourself);
														expressionAction: nil;
														startPosition: 255;
														stopPosition: 260;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 262;
																				stopPosition: 266;
																				yourself);
																		startPosition: 262;
																		stopPosition: 266;
																		yourself);
																expressionAction: nil;
																startPosition: 262;
																stopPosition: 266;
																yourself);
														startPosition: 261;
														stopPosition: 266;
														yourself);
												startPosition: 247;
												stopPosition: 266;
												yourself);
										startPosition: 247;
										stopPosition: 266;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 268;
																				stopPosition: 275;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 268;
																		stopPosition: 275;
																		yourself);
																arrayPosition: nil;
																startPosition: 268;
																stopPosition: 275;
																yourself);
														startPosition: 268;
														stopPosition: 275;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 277;
																		stopPosition: 282;
																		yourself);
																arrayInformation: nil;
																startPosition: 276;
																stopPosition: 282;
																yourself);
														expressionAction: nil;
														startPosition: 276;
														stopPosition: 282;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 284;
																				stopPosition: 288;
																				yourself);
																		startPosition: 284;
																		stopPosition: 288;
																		yourself);
																expressionAction: nil;
																startPosition: 284;
																stopPosition: 288;
																yourself);
														startPosition: 283;
														stopPosition: 288;
														yourself);
												startPosition: 268;
												stopPosition: 288;
												yourself);
										startPosition: 268;
										stopPosition: 288;
										yourself)};
								startPosition: 8;
								stopPosition: 288;
								yourself);
						startPosition: 7;
						stopPosition: 290;
						yourself);
				startPosition: 1;
				stopPosition: 290;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent17 [
	<generated>
	self
		assert:
			(self
				parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'detail';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '92';
																				startPosition: 15;
																				stopPosition: 16;
																				yourself);
																		startPosition: 15;
																		stopPosition: 16;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 16;
																yourself);
														startPosition: 14;
														stopPosition: 16;
														yourself);
												startPosition: 8;
												stopPosition: 16;
												yourself);
										startPosition: 8;
										stopPosition: 16;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 18;
																				stopPosition: 22;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 18;
																		stopPosition: 22;
																		yourself);
																arrayPosition: nil;
																startPosition: 18;
																stopPosition: 22;
																yourself);
														startPosition: 18;
														stopPosition: 22;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 24;
																				stopPosition: 34;
																				yourself);
																		startPosition: 24;
																		stopPosition: 34;
																		yourself);
																expressionAction: nil;
																startPosition: 24;
																stopPosition: 34;
																yourself);
														startPosition: 23;
														stopPosition: 34;
														yourself);
												startPosition: 18;
												stopPosition: 34;
												yourself);
										startPosition: 18;
										stopPosition: 34;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 36;
																				stopPosition: 47;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 36;
																		stopPosition: 47;
																		yourself);
																arrayPosition: nil;
																startPosition: 36;
																stopPosition: 47;
																yourself);
														startPosition: 36;
														stopPosition: 47;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 49;
																				stopPosition: 51;
																				yourself);
																		startPosition: 49;
																		stopPosition: 51;
																		yourself);
																expressionAction: nil;
																startPosition: 49;
																stopPosition: 51;
																yourself);
														startPosition: 48;
														stopPosition: 51;
														yourself);
												startPosition: 36;
												stopPosition: 51;
												yourself);
										startPosition: 36;
										stopPosition: 51;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 53;
																				stopPosition: 60;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 53;
																		stopPosition: 60;
																		yourself);
																arrayPosition: nil;
																startPosition: 53;
																stopPosition: 60;
																yourself);
														startPosition: 53;
														stopPosition: 60;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 62;
																		stopPosition: 66;
																		yourself);
																arrayInformation: nil;
																startPosition: 61;
																stopPosition: 66;
																yourself);
														expressionAction: nil;
														startPosition: 61;
														stopPosition: 66;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 68;
																				stopPosition: 76;
																				yourself);
																		startPosition: 68;
																		stopPosition: 76;
																		yourself);
																expressionAction: nil;
																startPosition: 68;
																stopPosition: 76;
																yourself);
														startPosition: 67;
														stopPosition: 76;
														yourself);
												startPosition: 53;
												stopPosition: 76;
												yourself);
										startPosition: 53;
										stopPosition: 76;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 78;
																				stopPosition: 85;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 78;
																		stopPosition: 85;
																		yourself);
																arrayPosition: nil;
																startPosition: 78;
																stopPosition: 85;
																yourself);
														startPosition: 78;
														stopPosition: 85;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 87;
																		stopPosition: 98;
																		yourself);
																arrayInformation: nil;
																startPosition: 86;
																stopPosition: 98;
																yourself);
														expressionAction: nil;
														startPosition: 86;
														stopPosition: 98;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 100;
																				stopPosition: 102;
																				yourself);
																		startPosition: 100;
																		stopPosition: 102;
																		yourself);
																expressionAction: nil;
																startPosition: 100;
																stopPosition: 102;
																yourself);
														startPosition: 99;
														stopPosition: 102;
														yourself);
												startPosition: 78;
												stopPosition: 102;
												yourself);
										startPosition: 78;
										stopPosition: 102;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 104;
																				stopPosition: 111;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 104;
																		stopPosition: 111;
																		yourself);
																arrayPosition: nil;
																startPosition: 104;
																stopPosition: 111;
																yourself);
														startPosition: 104;
														stopPosition: 111;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 113;
																		stopPosition: 117;
																		yourself);
																arrayInformation: nil;
																startPosition: 112;
																stopPosition: 117;
																yourself);
														expressionAction: nil;
														startPosition: 112;
														stopPosition: 117;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 119;
																				stopPosition: 121;
																				yourself);
																		startPosition: 119;
																		stopPosition: 121;
																		yourself);
																expressionAction: nil;
																startPosition: 119;
																stopPosition: 121;
																yourself);
														startPosition: 118;
														stopPosition: 121;
														yourself);
												startPosition: 104;
												stopPosition: 121;
												yourself);
										startPosition: 104;
										stopPosition: 121;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 123;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 123;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 123;
																stopPosition: 131;
																yourself);
														startPosition: 123;
														stopPosition: 131;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 133;
																				stopPosition: 135;
																				yourself);
																		startPosition: 133;
																		stopPosition: 135;
																		yourself);
																expressionAction: nil;
																startPosition: 133;
																stopPosition: 135;
																yourself);
														startPosition: 132;
														stopPosition: 135;
														yourself);
												startPosition: 123;
												stopPosition: 135;
												yourself);
										startPosition: 123;
										stopPosition: 135;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 137;
																				stopPosition: 144;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 137;
																		stopPosition: 144;
																		yourself);
																arrayPosition: nil;
																startPosition: 137;
																stopPosition: 144;
																yourself);
														startPosition: 137;
														stopPosition: 144;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 146;
																		stopPosition: 155;
																		yourself);
																arrayInformation: nil;
																startPosition: 145;
																stopPosition: 155;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 157;
																				stopPosition: 160;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 156;
																		stopPosition: 160;
																		yourself);
																expressionAction: nil;
																startPosition: 156;
																stopPosition: 160;
																yourself);
														startPosition: 145;
														stopPosition: 160;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 162;
																				stopPosition: 164;
																				yourself);
																		startPosition: 162;
																		stopPosition: 164;
																		yourself);
																expressionAction: nil;
																startPosition: 162;
																stopPosition: 164;
																yourself);
														startPosition: 161;
														stopPosition: 164;
														yourself);
												startPosition: 137;
												stopPosition: 164;
												yourself);
										startPosition: 137;
										stopPosition: 164;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 166;
																				stopPosition: 173;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 166;
																		stopPosition: 173;
																		yourself);
																arrayPosition: nil;
																startPosition: 166;
																stopPosition: 173;
																yourself);
														startPosition: 166;
														stopPosition: 173;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 175;
																		stopPosition: 184;
																		yourself);
																arrayInformation: nil;
																startPosition: 174;
																stopPosition: 184;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 186;
																				stopPosition: 190;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 185;
																		stopPosition: 190;
																		yourself);
																expressionAction: nil;
																startPosition: 185;
																stopPosition: 190;
																yourself);
														startPosition: 174;
														stopPosition: 190;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 192;
																				stopPosition: 194;
																				yourself);
																		startPosition: 192;
																		stopPosition: 194;
																		yourself);
																expressionAction: nil;
																startPosition: 192;
																stopPosition: 194;
																yourself);
														startPosition: 191;
														stopPosition: 194;
														yourself);
												startPosition: 166;
												stopPosition: 194;
												yourself);
										startPosition: 166;
										stopPosition: 194;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 196;
																				stopPosition: 203;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 196;
																		stopPosition: 203;
																		yourself);
																arrayPosition: nil;
																startPosition: 196;
																stopPosition: 203;
																yourself);
														startPosition: 196;
														stopPosition: 203;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 205;
																		stopPosition: 214;
																		yourself);
																arrayInformation: nil;
																startPosition: 204;
																stopPosition: 214;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 216;
																				stopPosition: 221;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 215;
																		stopPosition: 221;
																		yourself);
																expressionAction: nil;
																startPosition: 215;
																stopPosition: 221;
																yourself);
														startPosition: 204;
														stopPosition: 221;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 223;
																				stopPosition: 227;
																				yourself);
																		startPosition: 223;
																		stopPosition: 227;
																		yourself);
																expressionAction: nil;
																startPosition: 223;
																stopPosition: 227;
																yourself);
														startPosition: 222;
														stopPosition: 227;
														yourself);
												startPosition: 196;
												stopPosition: 227;
												yourself);
										startPosition: 196;
										stopPosition: 227;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 229;
																				stopPosition: 236;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 229;
																		stopPosition: 236;
																		yourself);
																arrayPosition: nil;
																startPosition: 229;
																stopPosition: 236;
																yourself);
														startPosition: 229;
														stopPosition: 236;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 238;
																		stopPosition: 242;
																		yourself);
																arrayInformation: nil;
																startPosition: 237;
																stopPosition: 242;
																yourself);
														expressionAction: nil;
														startPosition: 237;
														stopPosition: 242;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 244;
																				stopPosition: 246;
																				yourself);
																		startPosition: 244;
																		stopPosition: 246;
																		yourself);
																expressionAction: nil;
																startPosition: 244;
																stopPosition: 246;
																yourself);
														startPosition: 243;
														stopPosition: 246;
														yourself);
												startPosition: 229;
												stopPosition: 246;
												yourself);
										startPosition: 229;
										stopPosition: 246;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 248;
																				stopPosition: 255;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 248;
																		stopPosition: 255;
																		yourself);
																arrayPosition: nil;
																startPosition: 248;
																stopPosition: 255;
																yourself);
														startPosition: 248;
														stopPosition: 255;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 257;
																		stopPosition: 261;
																		yourself);
																arrayInformation: nil;
																startPosition: 256;
																stopPosition: 261;
																yourself);
														expressionAction: nil;
														startPosition: 256;
														stopPosition: 261;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 263;
																				stopPosition: 267;
																				yourself);
																		startPosition: 263;
																		stopPosition: 267;
																		yourself);
																expressionAction: nil;
																startPosition: 263;
																stopPosition: 267;
																yourself);
														startPosition: 262;
														stopPosition: 267;
														yourself);
												startPosition: 248;
												stopPosition: 267;
												yourself);
										startPosition: 248;
										stopPosition: 267;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 269;
																				stopPosition: 276;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 269;
																		stopPosition: 276;
																		yourself);
																arrayPosition: nil;
																startPosition: 269;
																stopPosition: 276;
																yourself);
														startPosition: 269;
														stopPosition: 276;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 278;
																		stopPosition: 283;
																		yourself);
																arrayInformation: nil;
																startPosition: 277;
																stopPosition: 283;
																yourself);
														expressionAction: nil;
														startPosition: 277;
														stopPosition: 283;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 285;
																				stopPosition: 289;
																				yourself);
																		startPosition: 285;
																		stopPosition: 289;
																		yourself);
																expressionAction: nil;
																startPosition: 285;
																stopPosition: 289;
																yourself);
														startPosition: 284;
														stopPosition: 289;
														yourself);
												startPosition: 269;
												stopPosition: 289;
												yourself);
										startPosition: 269;
										stopPosition: 289;
										yourself)};
								startPosition: 8;
								stopPosition: 289;
								yourself);
						startPosition: 7;
						stopPosition: 291;
						yourself);
				startPosition: 1;
				stopPosition: 291;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent18 [
	<generated>
	self
		assert:
			(self
				parse: 'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'ellipse';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 9;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 12;
																yourself);
														startPosition: 9;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 14;
																										stopPosition: 19;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 14;
																								stopPosition: 19;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 14;
																						stopPosition: 19;
																						yourself);
																				startPosition: 14;
																				stopPosition: 19;
																				yourself);
																		startPosition: 14;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 19;
																yourself);
														startPosition: 13;
														stopPosition: 19;
														yourself);
												startPosition: 9;
												stopPosition: 19;
												yourself);
										startPosition: 9;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 21;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 21;
																yourself);
														startPosition: 21;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2350"';
																				startPosition: 23;
																				stopPosition: 28;
																				yourself);
																		startPosition: 23;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself);
												startPosition: 21;
												stopPosition: 28;
												yourself);
										startPosition: 21;
										stopPosition: 28;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 30;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 30;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 30;
																stopPosition: 30;
																yourself);
														startPosition: 30;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"32"';
																				startPosition: 32;
																				stopPosition: 35;
																				yourself);
																		startPosition: 32;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 35;
																yourself);
														startPosition: 31;
														stopPosition: 35;
														yourself);
												startPosition: 30;
												stopPosition: 35;
												yourself);
										startPosition: 30;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 37;
																				stopPosition: 42;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 42;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 42;
																yourself);
														startPosition: 37;
														stopPosition: 42;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"36"';
																				startPosition: 44;
																				stopPosition: 47;
																				yourself);
																		startPosition: 44;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 44;
																stopPosition: 47;
																yourself);
														startPosition: 43;
														stopPosition: 47;
														yourself);
												startPosition: 37;
												stopPosition: 47;
												yourself);
										startPosition: 37;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 49;
																				stopPosition: 53;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 53;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 53;
																yourself);
														startPosition: 49;
														stopPosition: 53;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"41"';
																				startPosition: 55;
																				stopPosition: 58;
																				yourself);
																		startPosition: 55;
																		stopPosition: 58;
																		yourself);
																expressionAction: nil;
																startPosition: 55;
																stopPosition: 58;
																yourself);
														startPosition: 54;
														stopPosition: 58;
														yourself);
												startPosition: 49;
												stopPosition: 58;
												yourself);
										startPosition: 49;
										stopPosition: 58;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'tem_dtc';
																								startPosition: 66;
																								stopPosition: 72;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 66;
																						stopPosition: 72;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 66;
																				stopPosition: 72;
																				yourself);
																		startPosition: 66;
																		stopPosition: 72;
																		yourself);
																startPosition: 66;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 66;
														stopPosition: 72;
														yourself);
												startPosition: 61;
												stopPosition: 72;
												yourself);
										startPosition: 61;
										stopPosition: 72;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 74;
																				stopPosition: 80;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 74;
																		stopPosition: 80;
																		yourself);
																arrayPosition: nil;
																startPosition: 74;
																stopPosition: 80;
																yourself);
														startPosition: 74;
														stopPosition: 80;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1~tif(isNull(liq_dtc),0,1)"';
																				startPosition: 82;
																				stopPosition: 109;
																				yourself);
																		startPosition: 82;
																		stopPosition: 109;
																		yourself);
																expressionAction: nil;
																startPosition: 82;
																stopPosition: 109;
																yourself);
														startPosition: 81;
														stopPosition: 109;
														yourself);
												startPosition: 74;
												stopPosition: 109;
												yourself);
										startPosition: 74;
										stopPosition: 109;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 111;
																				stopPosition: 115;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 111;
																		stopPosition: 115;
																		yourself);
																arrayPosition: nil;
																startPosition: 111;
																stopPosition: 115;
																yourself);
														startPosition: 111;
														stopPosition: 115;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hatch';
																		startPosition: 117;
																		stopPosition: 121;
																		yourself);
																arrayInformation: nil;
																startPosition: 116;
																stopPosition: 121;
																yourself);
														expressionAction: nil;
														startPosition: 116;
														stopPosition: 121;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"6"';
																				startPosition: 123;
																				stopPosition: 125;
																				yourself);
																		startPosition: 123;
																		stopPosition: 125;
																		yourself);
																expressionAction: nil;
																startPosition: 123;
																stopPosition: 125;
																yourself);
														startPosition: 122;
														stopPosition: 125;
														yourself);
												startPosition: 111;
												stopPosition: 125;
												yourself);
										startPosition: 111;
										stopPosition: 125;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 127;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 127;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 127;
																stopPosition: 131;
																yourself);
														startPosition: 127;
														stopPosition: 131;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 133;
																		stopPosition: 137;
																		yourself);
																arrayInformation: nil;
																startPosition: 132;
																stopPosition: 137;
																yourself);
														expressionAction: nil;
														startPosition: 132;
														stopPosition: 137;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 139;
																				stopPosition: 143;
																				yourself);
																		startPosition: 139;
																		stopPosition: 143;
																		yourself);
																expressionAction: nil;
																startPosition: 139;
																stopPosition: 143;
																yourself);
														startPosition: 138;
														stopPosition: 143;
														yourself);
												startPosition: 127;
												stopPosition: 143;
												yourself);
										startPosition: 127;
										stopPosition: 143;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 145;
																				stopPosition: 147;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 145;
																		stopPosition: 147;
																		yourself);
																arrayPosition: nil;
																startPosition: 145;
																stopPosition: 147;
																yourself);
														startPosition: 145;
														stopPosition: 147;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'style';
																		startPosition: 149;
																		stopPosition: 153;
																		yourself);
																arrayInformation: nil;
																startPosition: 148;
																stopPosition: 153;
																yourself);
														expressionAction: nil;
														startPosition: 148;
														stopPosition: 153;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 155;
																				stopPosition: 157;
																				yourself);
																		startPosition: 155;
																		stopPosition: 157;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 157;
																yourself);
														startPosition: 154;
														stopPosition: 157;
														yourself);
												startPosition: 145;
												stopPosition: 157;
												yourself);
										startPosition: 145;
										stopPosition: 157;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 159;
																				stopPosition: 161;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 159;
																		stopPosition: 161;
																		yourself);
																arrayPosition: nil;
																startPosition: 159;
																stopPosition: 161;
																yourself);
														startPosition: 159;
														stopPosition: 161;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'width';
																		startPosition: 163;
																		stopPosition: 167;
																		yourself);
																arrayInformation: nil;
																startPosition: 162;
																stopPosition: 167;
																yourself);
														expressionAction: nil;
														startPosition: 162;
														stopPosition: 167;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"5"';
																				startPosition: 169;
																				stopPosition: 171;
																				yourself);
																		startPosition: 169;
																		stopPosition: 171;
																		yourself);
																expressionAction: nil;
																startPosition: 169;
																stopPosition: 171;
																yourself);
														startPosition: 168;
														stopPosition: 171;
														yourself);
												startPosition: 159;
												stopPosition: 171;
												yourself);
										startPosition: 159;
										stopPosition: 171;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 173;
																				stopPosition: 175;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 173;
																		stopPosition: 175;
																		yourself);
																arrayPosition: nil;
																startPosition: 173;
																stopPosition: 175;
																yourself);
														startPosition: 173;
														stopPosition: 175;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 177;
																		stopPosition: 181;
																		yourself);
																arrayInformation: nil;
																startPosition: 176;
																stopPosition: 181;
																yourself);
														expressionAction: nil;
														startPosition: 176;
														stopPosition: 181;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 183;
																				stopPosition: 187;
																				yourself);
																		startPosition: 183;
																		stopPosition: 187;
																		yourself);
																expressionAction: nil;
																startPosition: 183;
																stopPosition: 187;
																yourself);
														startPosition: 182;
														stopPosition: 187;
														yourself);
												startPosition: 173;
												stopPosition: 187;
												yourself);
										startPosition: 173;
										stopPosition: 187;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 190;
																				stopPosition: 199;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 190;
																		stopPosition: 199;
																		yourself);
																arrayPosition: nil;
																startPosition: 190;
																stopPosition: 199;
																yourself);
														startPosition: 190;
														stopPosition: 199;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'mode';
																		startPosition: 201;
																		stopPosition: 204;
																		yourself);
																arrayInformation: nil;
																startPosition: 200;
																stopPosition: 204;
																yourself);
														expressionAction: nil;
														startPosition: 200;
														stopPosition: 204;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2"';
																				startPosition: 206;
																				stopPosition: 208;
																				yourself);
																		startPosition: 206;
																		stopPosition: 208;
																		yourself);
																expressionAction: nil;
																startPosition: 206;
																stopPosition: 208;
																yourself);
														startPosition: 205;
														stopPosition: 208;
														yourself);
												startPosition: 190;
												stopPosition: 208;
												yourself);
										startPosition: 190;
										stopPosition: 208;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 210;
																				stopPosition: 219;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 210;
																		stopPosition: 219;
																		yourself);
																arrayPosition: nil;
																startPosition: 210;
																stopPosition: 219;
																yourself);
														startPosition: 210;
														stopPosition: 219;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 221;
																		stopPosition: 225;
																		yourself);
																arrayInformation: nil;
																startPosition: 220;
																stopPosition: 225;
																yourself);
														expressionAction: nil;
														startPosition: 220;
														stopPosition: 225;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 227;
																				stopPosition: 229;
																				yourself);
																		startPosition: 227;
																		stopPosition: 229;
																		yourself);
																expressionAction: nil;
																startPosition: 227;
																stopPosition: 229;
																yourself);
														startPosition: 226;
														stopPosition: 229;
														yourself);
												startPosition: 210;
												stopPosition: 229;
												yourself);
										startPosition: 210;
										stopPosition: 229;
										yourself)};
								startPosition: 9;
								stopPosition: 229;
								yourself);
						startPosition: 8;
						stopPosition: 231;
						yourself);
				startPosition: 1;
				stopPosition: 231;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent19 [
	<generated>
	self
		assert:
			(self
				parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'detail';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '92';
																				startPosition: 15;
																				stopPosition: 16;
																				yourself);
																		startPosition: 15;
																		stopPosition: 16;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 16;
																yourself);
														startPosition: 14;
														stopPosition: 16;
														yourself);
												startPosition: 8;
												stopPosition: 16;
												yourself);
										startPosition: 8;
										stopPosition: 16;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 18;
																				stopPosition: 22;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 18;
																		stopPosition: 22;
																		yourself);
																arrayPosition: nil;
																startPosition: 18;
																stopPosition: 22;
																yourself);
														startPosition: 18;
														stopPosition: 22;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 24;
																				stopPosition: 34;
																				yourself);
																		startPosition: 24;
																		stopPosition: 34;
																		yourself);
																expressionAction: nil;
																startPosition: 24;
																stopPosition: 34;
																yourself);
														startPosition: 23;
														stopPosition: 34;
														yourself);
												startPosition: 18;
												stopPosition: 34;
												yourself);
										startPosition: 18;
										stopPosition: 34;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 36;
																				stopPosition: 47;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 36;
																		stopPosition: 47;
																		yourself);
																arrayPosition: nil;
																startPosition: 36;
																stopPosition: 47;
																yourself);
														startPosition: 36;
														stopPosition: 47;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 49;
																				stopPosition: 51;
																				yourself);
																		startPosition: 49;
																		stopPosition: 51;
																		yourself);
																expressionAction: nil;
																startPosition: 49;
																stopPosition: 51;
																yourself);
														startPosition: 48;
														stopPosition: 51;
														yourself);
												startPosition: 36;
												stopPosition: 51;
												yourself);
										startPosition: 36;
										stopPosition: 51;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 53;
																				stopPosition: 60;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 53;
																		stopPosition: 60;
																		yourself);
																arrayPosition: nil;
																startPosition: 53;
																stopPosition: 60;
																yourself);
														startPosition: 53;
														stopPosition: 60;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 62;
																		stopPosition: 66;
																		yourself);
																arrayInformation: nil;
																startPosition: 61;
																stopPosition: 66;
																yourself);
														expressionAction: nil;
														startPosition: 61;
														stopPosition: 66;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 68;
																				stopPosition: 76;
																				yourself);
																		startPosition: 68;
																		stopPosition: 76;
																		yourself);
																expressionAction: nil;
																startPosition: 68;
																stopPosition: 76;
																yourself);
														startPosition: 67;
														stopPosition: 76;
														yourself);
												startPosition: 53;
												stopPosition: 76;
												yourself);
										startPosition: 53;
										stopPosition: 76;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 78;
																				stopPosition: 85;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 78;
																		stopPosition: 85;
																		yourself);
																arrayPosition: nil;
																startPosition: 78;
																stopPosition: 85;
																yourself);
														startPosition: 78;
														stopPosition: 85;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 87;
																		stopPosition: 98;
																		yourself);
																arrayInformation: nil;
																startPosition: 86;
																stopPosition: 98;
																yourself);
														expressionAction: nil;
														startPosition: 86;
														stopPosition: 98;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 100;
																				stopPosition: 102;
																				yourself);
																		startPosition: 100;
																		stopPosition: 102;
																		yourself);
																expressionAction: nil;
																startPosition: 100;
																stopPosition: 102;
																yourself);
														startPosition: 99;
														stopPosition: 102;
														yourself);
												startPosition: 78;
												stopPosition: 102;
												yourself);
										startPosition: 78;
										stopPosition: 102;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 104;
																				stopPosition: 111;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 104;
																		stopPosition: 111;
																		yourself);
																arrayPosition: nil;
																startPosition: 104;
																stopPosition: 111;
																yourself);
														startPosition: 104;
														stopPosition: 111;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 113;
																		stopPosition: 117;
																		yourself);
																arrayInformation: nil;
																startPosition: 112;
																stopPosition: 117;
																yourself);
														expressionAction: nil;
														startPosition: 112;
														stopPosition: 117;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 119;
																				stopPosition: 121;
																				yourself);
																		startPosition: 119;
																		stopPosition: 121;
																		yourself);
																expressionAction: nil;
																startPosition: 119;
																stopPosition: 121;
																yourself);
														startPosition: 118;
														stopPosition: 121;
														yourself);
												startPosition: 104;
												stopPosition: 121;
												yourself);
										startPosition: 104;
										stopPosition: 121;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 123;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 123;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 123;
																stopPosition: 131;
																yourself);
														startPosition: 123;
														stopPosition: 131;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 133;
																				stopPosition: 135;
																				yourself);
																		startPosition: 133;
																		stopPosition: 135;
																		yourself);
																expressionAction: nil;
																startPosition: 133;
																stopPosition: 135;
																yourself);
														startPosition: 132;
														stopPosition: 135;
														yourself);
												startPosition: 123;
												stopPosition: 135;
												yourself);
										startPosition: 123;
										stopPosition: 135;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 137;
																				stopPosition: 144;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 137;
																		stopPosition: 144;
																		yourself);
																arrayPosition: nil;
																startPosition: 137;
																stopPosition: 144;
																yourself);
														startPosition: 137;
														stopPosition: 144;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 146;
																		stopPosition: 155;
																		yourself);
																arrayInformation: nil;
																startPosition: 145;
																stopPosition: 155;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 157;
																				stopPosition: 160;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 156;
																		stopPosition: 160;
																		yourself);
																expressionAction: nil;
																startPosition: 156;
																stopPosition: 160;
																yourself);
														startPosition: 145;
														stopPosition: 160;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 162;
																				stopPosition: 164;
																				yourself);
																		startPosition: 162;
																		stopPosition: 164;
																		yourself);
																expressionAction: nil;
																startPosition: 162;
																stopPosition: 164;
																yourself);
														startPosition: 161;
														stopPosition: 164;
														yourself);
												startPosition: 137;
												stopPosition: 164;
												yourself);
										startPosition: 137;
										stopPosition: 164;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 166;
																				stopPosition: 173;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 166;
																		stopPosition: 173;
																		yourself);
																arrayPosition: nil;
																startPosition: 166;
																stopPosition: 173;
																yourself);
														startPosition: 166;
														stopPosition: 173;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 175;
																		stopPosition: 184;
																		yourself);
																arrayInformation: nil;
																startPosition: 174;
																stopPosition: 184;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 186;
																				stopPosition: 190;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 185;
																		stopPosition: 190;
																		yourself);
																expressionAction: nil;
																startPosition: 185;
																stopPosition: 190;
																yourself);
														startPosition: 174;
														stopPosition: 190;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 192;
																				stopPosition: 194;
																				yourself);
																		startPosition: 192;
																		stopPosition: 194;
																		yourself);
																expressionAction: nil;
																startPosition: 192;
																stopPosition: 194;
																yourself);
														startPosition: 191;
														stopPosition: 194;
														yourself);
												startPosition: 166;
												stopPosition: 194;
												yourself);
										startPosition: 166;
										stopPosition: 194;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 196;
																				stopPosition: 203;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 196;
																		stopPosition: 203;
																		yourself);
																arrayPosition: nil;
																startPosition: 196;
																stopPosition: 203;
																yourself);
														startPosition: 196;
														stopPosition: 203;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 205;
																		stopPosition: 214;
																		yourself);
																arrayInformation: nil;
																startPosition: 204;
																stopPosition: 214;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 216;
																				stopPosition: 221;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 215;
																		stopPosition: 221;
																		yourself);
																expressionAction: nil;
																startPosition: 215;
																stopPosition: 221;
																yourself);
														startPosition: 204;
														stopPosition: 221;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 223;
																				stopPosition: 227;
																				yourself);
																		startPosition: 223;
																		stopPosition: 227;
																		yourself);
																expressionAction: nil;
																startPosition: 223;
																stopPosition: 227;
																yourself);
														startPosition: 222;
														stopPosition: 227;
														yourself);
												startPosition: 196;
												stopPosition: 227;
												yourself);
										startPosition: 196;
										stopPosition: 227;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 229;
																				stopPosition: 236;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 229;
																		stopPosition: 236;
																		yourself);
																arrayPosition: nil;
																startPosition: 229;
																stopPosition: 236;
																yourself);
														startPosition: 229;
														stopPosition: 236;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 238;
																		stopPosition: 242;
																		yourself);
																arrayInformation: nil;
																startPosition: 237;
																stopPosition: 242;
																yourself);
														expressionAction: nil;
														startPosition: 237;
														stopPosition: 242;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 244;
																				stopPosition: 246;
																				yourself);
																		startPosition: 244;
																		stopPosition: 246;
																		yourself);
																expressionAction: nil;
																startPosition: 244;
																stopPosition: 246;
																yourself);
														startPosition: 243;
														stopPosition: 246;
														yourself);
												startPosition: 229;
												stopPosition: 246;
												yourself);
										startPosition: 229;
										stopPosition: 246;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 248;
																				stopPosition: 255;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 248;
																		stopPosition: 255;
																		yourself);
																arrayPosition: nil;
																startPosition: 248;
																stopPosition: 255;
																yourself);
														startPosition: 248;
														stopPosition: 255;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 257;
																		stopPosition: 261;
																		yourself);
																arrayInformation: nil;
																startPosition: 256;
																stopPosition: 261;
																yourself);
														expressionAction: nil;
														startPosition: 256;
														stopPosition: 261;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 263;
																				stopPosition: 267;
																				yourself);
																		startPosition: 263;
																		stopPosition: 267;
																		yourself);
																expressionAction: nil;
																startPosition: 263;
																stopPosition: 267;
																yourself);
														startPosition: 262;
														stopPosition: 267;
														yourself);
												startPosition: 248;
												stopPosition: 267;
												yourself);
										startPosition: 248;
										stopPosition: 267;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 269;
																				stopPosition: 276;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 269;
																		stopPosition: 276;
																		yourself);
																arrayPosition: nil;
																startPosition: 269;
																stopPosition: 276;
																yourself);
														startPosition: 269;
														stopPosition: 276;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 278;
																		stopPosition: 283;
																		yourself);
																arrayInformation: nil;
																startPosition: 277;
																stopPosition: 283;
																yourself);
														expressionAction: nil;
														startPosition: 277;
														stopPosition: 283;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 285;
																				stopPosition: 289;
																				yourself);
																		startPosition: 285;
																		stopPosition: 289;
																		yourself);
																expressionAction: nil;
																startPosition: 285;
																stopPosition: 289;
																yourself);
														startPosition: 284;
														stopPosition: 289;
														yourself);
												startPosition: 269;
												stopPosition: 289;
												yourself);
										startPosition: 269;
										stopPosition: 289;
										yourself)};
								startPosition: 8;
								stopPosition: 289;
								yourself);
						startPosition: 7;
						stopPosition: 291;
						yourself);
				startPosition: 1;
				stopPosition: 291;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent2 [
	<generated>
	self
		assert:
			(self
				parse: 'group(level=1 header.height=189 trailer.height=73 by=("dst_cod" ) header.color="553648127" trailer.color="536870912" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'group';
						startPosition: 1;
						stopPosition: 5;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'level';
																				startPosition: 7;
																				stopPosition: 11;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 7;
																		stopPosition: 11;
																		yourself);
																arrayPosition: nil;
																startPosition: 7;
																stopPosition: 11;
																yourself);
														startPosition: 7;
														stopPosition: 11;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '1';
																				startPosition: 13;
																				stopPosition: 13;
																				yourself);
																		startPosition: 13;
																		stopPosition: 13;
																		yourself);
																expressionAction: nil;
																startPosition: 13;
																stopPosition: 13;
																yourself);
														startPosition: 12;
														stopPosition: 13;
														yourself);
												startPosition: 7;
												stopPosition: 13;
												yourself);
										startPosition: 7;
										stopPosition: 13;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'header';
																				startPosition: 15;
																				stopPosition: 20;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 15;
																		stopPosition: 20;
																		yourself);
																arrayPosition: nil;
																startPosition: 15;
																stopPosition: 20;
																yourself);
														startPosition: 15;
														stopPosition: 20;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'height';
																		startPosition: 22;
																		stopPosition: 27;
																		yourself);
																arrayInformation: nil;
																startPosition: 21;
																stopPosition: 27;
																yourself);
														expressionAction: nil;
														startPosition: 21;
														stopPosition: 27;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '189';
																				startPosition: 29;
																				stopPosition: 31;
																				yourself);
																		startPosition: 29;
																		stopPosition: 31;
																		yourself);
																expressionAction: nil;
																startPosition: 29;
																stopPosition: 31;
																yourself);
														startPosition: 28;
														stopPosition: 31;
														yourself);
												startPosition: 15;
												stopPosition: 31;
												yourself);
										startPosition: 15;
										stopPosition: 31;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'trailer';
																				startPosition: 33;
																				stopPosition: 39;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 33;
																		stopPosition: 39;
																		yourself);
																arrayPosition: nil;
																startPosition: 33;
																stopPosition: 39;
																yourself);
														startPosition: 33;
														stopPosition: 39;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'height';
																		startPosition: 41;
																		stopPosition: 46;
																		yourself);
																arrayInformation: nil;
																startPosition: 40;
																stopPosition: 46;
																yourself);
														expressionAction: nil;
														startPosition: 40;
														stopPosition: 46;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '73';
																				startPosition: 48;
																				stopPosition: 49;
																				yourself);
																		startPosition: 48;
																		stopPosition: 49;
																		yourself);
																expressionAction: nil;
																startPosition: 48;
																stopPosition: 49;
																yourself);
														startPosition: 47;
														stopPosition: 49;
														yourself);
												startPosition: 33;
												stopPosition: 49;
												yourself);
										startPosition: 33;
										stopPosition: 49;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'by';
																				startPosition: 51;
																				stopPosition: 52;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 51;
																		stopPosition: 52;
																		yourself);
																arrayPosition: nil;
																startPosition: 51;
																stopPosition: 52;
																yourself);
														startPosition: 51;
														stopPosition: 52;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedExpression new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '"dst_cod"';
																								startPosition: 55;
																								stopPosition: 63;
																								yourself);
																						startPosition: 55;
																						stopPosition: 63;
																						yourself);
																				expressionAction: nil;
																				startPosition: 55;
																				stopPosition: 63;
																				yourself);
																		startPosition: 54;
																		stopPosition: 65;
																		yourself);
																expressionAction: nil;
																startPosition: 54;
																stopPosition: 65;
																yourself);
														startPosition: 53;
														stopPosition: 65;
														yourself);
												startPosition: 51;
												stopPosition: 65;
												yourself);
										startPosition: 51;
										stopPosition: 65;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'header';
																				startPosition: 67;
																				stopPosition: 72;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 67;
																		stopPosition: 72;
																		yourself);
																arrayPosition: nil;
																startPosition: 67;
																stopPosition: 72;
																yourself);
														startPosition: 67;
														stopPosition: 72;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 74;
																		stopPosition: 78;
																		yourself);
																arrayInformation: nil;
																startPosition: 73;
																stopPosition: 78;
																yourself);
														expressionAction: nil;
														startPosition: 73;
														stopPosition: 78;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"553648127"';
																				startPosition: 80;
																				stopPosition: 90;
																				yourself);
																		startPosition: 80;
																		stopPosition: 90;
																		yourself);
																expressionAction: nil;
																startPosition: 80;
																stopPosition: 90;
																yourself);
														startPosition: 79;
														stopPosition: 90;
														yourself);
												startPosition: 67;
												stopPosition: 90;
												yourself);
										startPosition: 67;
										stopPosition: 90;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'trailer';
																				startPosition: 92;
																				stopPosition: 98;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 92;
																		stopPosition: 98;
																		yourself);
																arrayPosition: nil;
																startPosition: 92;
																stopPosition: 98;
																yourself);
														startPosition: 92;
														stopPosition: 98;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 100;
																		stopPosition: 104;
																		yourself);
																arrayInformation: nil;
																startPosition: 99;
																stopPosition: 104;
																yourself);
														expressionAction: nil;
														startPosition: 99;
														stopPosition: 104;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 106;
																				stopPosition: 116;
																				yourself);
																		startPosition: 106;
																		stopPosition: 116;
																		yourself);
																expressionAction: nil;
																startPosition: 106;
																stopPosition: 116;
																yourself);
														startPosition: 105;
														stopPosition: 116;
														yourself);
												startPosition: 92;
												stopPosition: 116;
												yourself);
										startPosition: 92;
										stopPosition: 116;
										yourself)};
								startPosition: 7;
								stopPosition: 116;
								yourself);
						startPosition: 6;
						stopPosition: 118;
						yourself);
				startPosition: 1;
				stopPosition: 118;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent20 [
	<generated>
	self
		assert: (self parse: 'htmltable(border="1" )' rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'htmltable';
						startPosition: 1;
						stopPosition: 9;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'border';
																				startPosition: 11;
																				stopPosition: 16;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 11;
																		stopPosition: 16;
																		yourself);
																arrayPosition: nil;
																startPosition: 11;
																stopPosition: 16;
																yourself);
														startPosition: 11;
														stopPosition: 16;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 18;
																				stopPosition: 20;
																				yourself);
																		startPosition: 18;
																		stopPosition: 20;
																		yourself);
																expressionAction: nil;
																startPosition: 18;
																stopPosition: 20;
																yourself);
														startPosition: 17;
														stopPosition: 20;
														yourself);
												startPosition: 11;
												stopPosition: 20;
												yourself);
										startPosition: 11;
										stopPosition: 20;
										yourself)};
								startPosition: 11;
								stopPosition: 20;
								yourself);
						startPosition: 10;
						stopPosition: 22;
						yourself);
				startPosition: 1;
				stopPosition: 22;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent21 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent22 [
	<generated>
	self
		assert:
			(self
				parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'summary';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 9;
																				stopPosition: 14;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 14;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 14;
																yourself);
														startPosition: 9;
														stopPosition: 14;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '84';
																				startPosition: 16;
																				stopPosition: 17;
																				yourself);
																		startPosition: 16;
																		stopPosition: 17;
																		yourself);
																expressionAction: nil;
																startPosition: 16;
																stopPosition: 17;
																yourself);
														startPosition: 15;
														stopPosition: 17;
														yourself);
												startPosition: 9;
												stopPosition: 17;
												yourself);
										startPosition: 9;
										stopPosition: 17;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 19;
																				stopPosition: 23;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 19;
																		stopPosition: 23;
																		yourself);
																arrayPosition: nil;
																startPosition: 19;
																stopPosition: 23;
																yourself);
														startPosition: 19;
														stopPosition: 23;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 25;
																				stopPosition: 35;
																				yourself);
																		startPosition: 25;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 25;
																stopPosition: 35;
																yourself);
														startPosition: 24;
														stopPosition: 35;
														yourself);
												startPosition: 19;
												stopPosition: 35;
												yourself);
										startPosition: 19;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 37;
																				stopPosition: 48;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 48;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 48;
																yourself);
														startPosition: 37;
														stopPosition: 48;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 50;
																				stopPosition: 52;
																				yourself);
																		startPosition: 50;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 52;
																yourself);
														startPosition: 49;
														stopPosition: 52;
														yourself);
												startPosition: 37;
												stopPosition: 52;
												yourself);
										startPosition: 37;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 54;
																				stopPosition: 61;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 61;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 61;
																yourself);
														startPosition: 54;
														stopPosition: 61;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 63;
																		stopPosition: 67;
																		yourself);
																arrayInformation: nil;
																startPosition: 62;
																stopPosition: 67;
																yourself);
														expressionAction: nil;
														startPosition: 62;
														stopPosition: 67;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 69;
																				stopPosition: 77;
																				yourself);
																		startPosition: 69;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 69;
																stopPosition: 77;
																yourself);
														startPosition: 68;
														stopPosition: 77;
														yourself);
												startPosition: 54;
												stopPosition: 77;
												yourself);
										startPosition: 54;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 79;
																				stopPosition: 86;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 86;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 86;
																yourself);
														startPosition: 79;
														stopPosition: 86;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 88;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 87;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 87;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 101;
																				stopPosition: 103;
																				yourself);
																		startPosition: 101;
																		stopPosition: 103;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 103;
																yourself);
														startPosition: 100;
														stopPosition: 103;
														yourself);
												startPosition: 79;
												stopPosition: 103;
												yourself);
										startPosition: 79;
										stopPosition: 103;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 105;
																				stopPosition: 112;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 105;
																		stopPosition: 112;
																		yourself);
																arrayPosition: nil;
																startPosition: 105;
																stopPosition: 112;
																yourself);
														startPosition: 105;
														stopPosition: 112;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 114;
																		stopPosition: 118;
																		yourself);
																arrayInformation: nil;
																startPosition: 113;
																stopPosition: 118;
																yourself);
														expressionAction: nil;
														startPosition: 113;
														stopPosition: 118;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 120;
																				stopPosition: 122;
																				yourself);
																		startPosition: 120;
																		stopPosition: 122;
																		yourself);
																expressionAction: nil;
																startPosition: 120;
																stopPosition: 122;
																yourself);
														startPosition: 119;
														stopPosition: 122;
														yourself);
												startPosition: 105;
												stopPosition: 122;
												yourself);
										startPosition: 105;
										stopPosition: 122;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 124;
																				stopPosition: 132;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 124;
																		stopPosition: 132;
																		yourself);
																arrayPosition: nil;
																startPosition: 124;
																stopPosition: 132;
																yourself);
														startPosition: 124;
														stopPosition: 132;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 134;
																				stopPosition: 136;
																				yourself);
																		startPosition: 134;
																		stopPosition: 136;
																		yourself);
																expressionAction: nil;
																startPosition: 134;
																stopPosition: 136;
																yourself);
														startPosition: 133;
														stopPosition: 136;
														yourself);
												startPosition: 124;
												stopPosition: 136;
												yourself);
										startPosition: 124;
										stopPosition: 136;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 138;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 138;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 138;
																stopPosition: 145;
																yourself);
														startPosition: 138;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 147;
																		stopPosition: 156;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 156;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 158;
																				stopPosition: 161;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 157;
																		stopPosition: 161;
																		yourself);
																expressionAction: nil;
																startPosition: 157;
																stopPosition: 161;
																yourself);
														startPosition: 146;
														stopPosition: 161;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 163;
																				stopPosition: 165;
																				yourself);
																		startPosition: 163;
																		stopPosition: 165;
																		yourself);
																expressionAction: nil;
																startPosition: 163;
																stopPosition: 165;
																yourself);
														startPosition: 162;
														stopPosition: 165;
														yourself);
												startPosition: 138;
												stopPosition: 165;
												yourself);
										startPosition: 138;
										stopPosition: 165;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 167;
																				stopPosition: 174;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 167;
																		stopPosition: 174;
																		yourself);
																arrayPosition: nil;
																startPosition: 167;
																stopPosition: 174;
																yourself);
														startPosition: 167;
														stopPosition: 174;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 176;
																		stopPosition: 185;
																		yourself);
																arrayInformation: nil;
																startPosition: 175;
																stopPosition: 185;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 187;
																				stopPosition: 191;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 186;
																		stopPosition: 191;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 191;
																yourself);
														startPosition: 175;
														stopPosition: 191;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 193;
																				stopPosition: 195;
																				yourself);
																		startPosition: 193;
																		stopPosition: 195;
																		yourself);
																expressionAction: nil;
																startPosition: 193;
																stopPosition: 195;
																yourself);
														startPosition: 192;
														stopPosition: 195;
														yourself);
												startPosition: 167;
												stopPosition: 195;
												yourself);
										startPosition: 167;
										stopPosition: 195;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 197;
																				stopPosition: 204;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 197;
																		stopPosition: 204;
																		yourself);
																arrayPosition: nil;
																startPosition: 197;
																stopPosition: 204;
																yourself);
														startPosition: 197;
														stopPosition: 204;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 206;
																		stopPosition: 215;
																		yourself);
																arrayInformation: nil;
																startPosition: 205;
																stopPosition: 215;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 217;
																				stopPosition: 222;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																expressionAction: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 205;
														stopPosition: 222;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 224;
																				stopPosition: 228;
																				yourself);
																		startPosition: 224;
																		stopPosition: 228;
																		yourself);
																expressionAction: nil;
																startPosition: 224;
																stopPosition: 228;
																yourself);
														startPosition: 223;
														stopPosition: 228;
														yourself);
												startPosition: 197;
												stopPosition: 228;
												yourself);
										startPosition: 197;
										stopPosition: 228;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 230;
																				stopPosition: 237;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 230;
																		stopPosition: 237;
																		yourself);
																arrayPosition: nil;
																startPosition: 230;
																stopPosition: 237;
																yourself);
														startPosition: 230;
														stopPosition: 237;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 239;
																		stopPosition: 243;
																		yourself);
																arrayInformation: nil;
																startPosition: 238;
																stopPosition: 243;
																yourself);
														expressionAction: nil;
														startPosition: 238;
														stopPosition: 243;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 245;
																				stopPosition: 247;
																				yourself);
																		startPosition: 245;
																		stopPosition: 247;
																		yourself);
																expressionAction: nil;
																startPosition: 245;
																stopPosition: 247;
																yourself);
														startPosition: 244;
														stopPosition: 247;
														yourself);
												startPosition: 230;
												stopPosition: 247;
												yourself);
										startPosition: 230;
										stopPosition: 247;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 249;
																				stopPosition: 256;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 249;
																		stopPosition: 256;
																		yourself);
																arrayPosition: nil;
																startPosition: 249;
																stopPosition: 256;
																yourself);
														startPosition: 249;
														stopPosition: 256;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 258;
																		stopPosition: 262;
																		yourself);
																arrayInformation: nil;
																startPosition: 257;
																stopPosition: 262;
																yourself);
														expressionAction: nil;
														startPosition: 257;
														stopPosition: 262;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 264;
																				stopPosition: 268;
																				yourself);
																		startPosition: 264;
																		stopPosition: 268;
																		yourself);
																expressionAction: nil;
																startPosition: 264;
																stopPosition: 268;
																yourself);
														startPosition: 263;
														stopPosition: 268;
														yourself);
												startPosition: 249;
												stopPosition: 268;
												yourself);
										startPosition: 249;
										stopPosition: 268;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 270;
																				stopPosition: 277;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 270;
																		stopPosition: 277;
																		yourself);
																arrayPosition: nil;
																startPosition: 270;
																stopPosition: 277;
																yourself);
														startPosition: 270;
														stopPosition: 277;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 279;
																		stopPosition: 284;
																		yourself);
																arrayInformation: nil;
																startPosition: 278;
																stopPosition: 284;
																yourself);
														expressionAction: nil;
														startPosition: 278;
														stopPosition: 284;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 286;
																				stopPosition: 290;
																				yourself);
																		startPosition: 286;
																		stopPosition: 290;
																		yourself);
																expressionAction: nil;
																startPosition: 286;
																stopPosition: 290;
																yourself);
														startPosition: 285;
														stopPosition: 290;
														yourself);
												startPosition: 270;
												stopPosition: 290;
												yourself);
										startPosition: 270;
										stopPosition: 290;
										yourself)};
								startPosition: 9;
								stopPosition: 290;
								yourself);
						startPosition: 8;
						stopPosition: 292;
						yourself);
				startPosition: 1;
				stopPosition: 292;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent23 [
	<generated>
	self
		assert:
			(self
				parse: 'ole(band=background x="2434" y="8572" height="11350" width="16510" border="0" tooltip.backcolor="0" tooltip.delay.initial="0" tooltip.delay.visible="0" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="0" tooltip.transparency="0"  clientname="untitled"range=0 binaryindex=1 activation=1 linkupdateoptions=0 contentsallowed=2 displaytype=1  name=ole_1 visible="1~t0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'ole';
						startPosition: 1;
						stopPosition: 3;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 5;
																				stopPosition: 8;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 5;
																		stopPosition: 8;
																		yourself);
																arrayPosition: nil;
																startPosition: 5;
																stopPosition: 8;
																yourself);
														startPosition: 5;
														stopPosition: 8;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'background';
																										startPosition: 10;
																										stopPosition: 19;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 10;
																								stopPosition: 19;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 10;
																						stopPosition: 19;
																						yourself);
																				startPosition: 10;
																				stopPosition: 19;
																				yourself);
																		startPosition: 10;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 10;
																stopPosition: 19;
																yourself);
														startPosition: 9;
														stopPosition: 19;
														yourself);
												startPosition: 5;
												stopPosition: 19;
												yourself);
										startPosition: 5;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 21;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 21;
																yourself);
														startPosition: 21;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2434"';
																				startPosition: 23;
																				stopPosition: 28;
																				yourself);
																		startPosition: 23;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself);
												startPosition: 21;
												stopPosition: 28;
												yourself);
										startPosition: 21;
										stopPosition: 28;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 30;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 30;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 30;
																stopPosition: 30;
																yourself);
														startPosition: 30;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8572"';
																				startPosition: 32;
																				stopPosition: 37;
																				yourself);
																		startPosition: 32;
																		stopPosition: 37;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 37;
																yourself);
														startPosition: 31;
														stopPosition: 37;
														yourself);
												startPosition: 30;
												stopPosition: 37;
												yourself);
										startPosition: 30;
										stopPosition: 37;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 39;
																				stopPosition: 44;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 39;
																		stopPosition: 44;
																		yourself);
																arrayPosition: nil;
																startPosition: 39;
																stopPosition: 44;
																yourself);
														startPosition: 39;
														stopPosition: 44;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"11350"';
																				startPosition: 46;
																				stopPosition: 52;
																				yourself);
																		startPosition: 46;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 46;
																stopPosition: 52;
																yourself);
														startPosition: 45;
														stopPosition: 52;
														yourself);
												startPosition: 39;
												stopPosition: 52;
												yourself);
										startPosition: 39;
										stopPosition: 52;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 54;
																				stopPosition: 58;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 54;
																		stopPosition: 58;
																		yourself);
																arrayPosition: nil;
																startPosition: 54;
																stopPosition: 58;
																yourself);
														startPosition: 54;
														stopPosition: 58;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"16510"';
																				startPosition: 60;
																				stopPosition: 66;
																				yourself);
																		startPosition: 60;
																		stopPosition: 66;
																		yourself);
																expressionAction: nil;
																startPosition: 60;
																stopPosition: 66;
																yourself);
														startPosition: 59;
														stopPosition: 66;
														yourself);
												startPosition: 54;
												stopPosition: 66;
												yourself);
										startPosition: 54;
										stopPosition: 66;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'border';
																				startPosition: 68;
																				stopPosition: 73;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 68;
																		stopPosition: 73;
																		yourself);
																arrayPosition: nil;
																startPosition: 68;
																stopPosition: 73;
																yourself);
														startPosition: 68;
														stopPosition: 73;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 75;
																				stopPosition: 77;
																				yourself);
																		startPosition: 75;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 75;
																stopPosition: 77;
																yourself);
														startPosition: 74;
														stopPosition: 77;
														yourself);
												startPosition: 68;
												stopPosition: 77;
												yourself);
										startPosition: 68;
										stopPosition: 77;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 79;
																				stopPosition: 85;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 79;
																		stopPosition: 85;
																		yourself);
																arrayPosition: nil;
																startPosition: 79;
																stopPosition: 85;
																yourself);
														startPosition: 79;
														stopPosition: 85;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'backcolor';
																		startPosition: 87;
																		stopPosition: 95;
																		yourself);
																arrayInformation: nil;
																startPosition: 86;
																stopPosition: 95;
																yourself);
														expressionAction: nil;
														startPosition: 86;
														stopPosition: 95;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 97;
																				stopPosition: 99;
																				yourself);
																		startPosition: 97;
																		stopPosition: 99;
																		yourself);
																expressionAction: nil;
																startPosition: 97;
																stopPosition: 99;
																yourself);
														startPosition: 96;
														stopPosition: 99;
														yourself);
												startPosition: 79;
												stopPosition: 99;
												yourself);
										startPosition: 79;
										stopPosition: 99;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 101;
																				stopPosition: 107;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 101;
																		stopPosition: 107;
																		yourself);
																arrayPosition: nil;
																startPosition: 101;
																stopPosition: 107;
																yourself);
														startPosition: 101;
														stopPosition: 107;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'delay';
																		startPosition: 109;
																		stopPosition: 113;
																		yourself);
																arrayInformation: nil;
																startPosition: 108;
																stopPosition: 113;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'initial';
																				startPosition: 115;
																				stopPosition: 121;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 114;
																		stopPosition: 121;
																		yourself);
																expressionAction: nil;
																startPosition: 114;
																stopPosition: 121;
																yourself);
														startPosition: 108;
														stopPosition: 121;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 123;
																				stopPosition: 125;
																				yourself);
																		startPosition: 123;
																		stopPosition: 125;
																		yourself);
																expressionAction: nil;
																startPosition: 123;
																stopPosition: 125;
																yourself);
														startPosition: 122;
														stopPosition: 125;
														yourself);
												startPosition: 101;
												stopPosition: 125;
												yourself);
										startPosition: 101;
										stopPosition: 125;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 127;
																				stopPosition: 133;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 127;
																		stopPosition: 133;
																		yourself);
																arrayPosition: nil;
																startPosition: 127;
																stopPosition: 133;
																yourself);
														startPosition: 127;
														stopPosition: 133;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'delay';
																		startPosition: 135;
																		stopPosition: 139;
																		yourself);
																arrayInformation: nil;
																startPosition: 134;
																stopPosition: 139;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'visible';
																				startPosition: 141;
																				stopPosition: 147;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 140;
																		stopPosition: 147;
																		yourself);
																expressionAction: nil;
																startPosition: 140;
																stopPosition: 147;
																yourself);
														startPosition: 134;
														stopPosition: 147;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 149;
																				stopPosition: 151;
																				yourself);
																		startPosition: 149;
																		stopPosition: 151;
																		yourself);
																expressionAction: nil;
																startPosition: 149;
																stopPosition: 151;
																yourself);
														startPosition: 148;
														stopPosition: 151;
														yourself);
												startPosition: 127;
												stopPosition: 151;
												yourself);
										startPosition: 127;
										stopPosition: 151;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 153;
																				stopPosition: 159;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 153;
																		stopPosition: 159;
																		yourself);
																arrayPosition: nil;
																startPosition: 153;
																stopPosition: 159;
																yourself);
														startPosition: 153;
														stopPosition: 159;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'enabled';
																		startPosition: 161;
																		stopPosition: 167;
																		yourself);
																arrayInformation: nil;
																startPosition: 160;
																stopPosition: 167;
																yourself);
														expressionAction: nil;
														startPosition: 160;
														stopPosition: 167;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 169;
																				stopPosition: 171;
																				yourself);
																		startPosition: 169;
																		stopPosition: 171;
																		yourself);
																expressionAction: nil;
																startPosition: 169;
																stopPosition: 171;
																yourself);
														startPosition: 168;
														stopPosition: 171;
														yourself);
												startPosition: 153;
												stopPosition: 171;
												yourself);
										startPosition: 153;
										stopPosition: 171;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 173;
																				stopPosition: 179;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 173;
																		stopPosition: 179;
																		yourself);
																arrayPosition: nil;
																startPosition: 173;
																stopPosition: 179;
																yourself);
														startPosition: 173;
														stopPosition: 179;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hasclosebutton';
																		startPosition: 181;
																		stopPosition: 194;
																		yourself);
																arrayInformation: nil;
																startPosition: 180;
																stopPosition: 194;
																yourself);
														expressionAction: nil;
														startPosition: 180;
														stopPosition: 194;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 196;
																				stopPosition: 198;
																				yourself);
																		startPosition: 196;
																		stopPosition: 198;
																		yourself);
																expressionAction: nil;
																startPosition: 196;
																stopPosition: 198;
																yourself);
														startPosition: 195;
														stopPosition: 198;
														yourself);
												startPosition: 173;
												stopPosition: 198;
												yourself);
										startPosition: 173;
										stopPosition: 198;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 200;
																				stopPosition: 206;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 200;
																		stopPosition: 206;
																		yourself);
																arrayPosition: nil;
																startPosition: 200;
																stopPosition: 206;
																yourself);
														startPosition: 200;
														stopPosition: 206;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'icon';
																		startPosition: 208;
																		stopPosition: 211;
																		yourself);
																arrayInformation: nil;
																startPosition: 207;
																stopPosition: 211;
																yourself);
														expressionAction: nil;
														startPosition: 207;
														stopPosition: 211;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 213;
																				stopPosition: 215;
																				yourself);
																		startPosition: 213;
																		stopPosition: 215;
																		yourself);
																expressionAction: nil;
																startPosition: 213;
																stopPosition: 215;
																yourself);
														startPosition: 212;
														stopPosition: 215;
														yourself);
												startPosition: 200;
												stopPosition: 215;
												yourself);
										startPosition: 200;
										stopPosition: 215;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 217;
																				stopPosition: 223;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 217;
																		stopPosition: 223;
																		yourself);
																arrayPosition: nil;
																startPosition: 217;
																stopPosition: 223;
																yourself);
														startPosition: 217;
														stopPosition: 223;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'isbubble';
																		startPosition: 225;
																		stopPosition: 232;
																		yourself);
																arrayInformation: nil;
																startPosition: 224;
																stopPosition: 232;
																yourself);
														expressionAction: nil;
														startPosition: 224;
														stopPosition: 232;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 234;
																				stopPosition: 236;
																				yourself);
																		startPosition: 234;
																		stopPosition: 236;
																		yourself);
																expressionAction: nil;
																startPosition: 234;
																stopPosition: 236;
																yourself);
														startPosition: 233;
														stopPosition: 236;
														yourself);
												startPosition: 217;
												stopPosition: 236;
												yourself);
										startPosition: 217;
										stopPosition: 236;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 238;
																				stopPosition: 244;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 238;
																		stopPosition: 244;
																		yourself);
																arrayPosition: nil;
																startPosition: 238;
																stopPosition: 244;
																yourself);
														startPosition: 238;
														stopPosition: 244;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'maxwidth';
																		startPosition: 246;
																		stopPosition: 253;
																		yourself);
																arrayInformation: nil;
																startPosition: 245;
																stopPosition: 253;
																yourself);
														expressionAction: nil;
														startPosition: 245;
														stopPosition: 253;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 255;
																				stopPosition: 257;
																				yourself);
																		startPosition: 255;
																		stopPosition: 257;
																		yourself);
																expressionAction: nil;
																startPosition: 255;
																stopPosition: 257;
																yourself);
														startPosition: 254;
														stopPosition: 257;
														yourself);
												startPosition: 238;
												stopPosition: 257;
												yourself);
										startPosition: 238;
										stopPosition: 257;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 259;
																				stopPosition: 265;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 259;
																		stopPosition: 265;
																		yourself);
																arrayPosition: nil;
																startPosition: 259;
																stopPosition: 265;
																yourself);
														startPosition: 259;
														stopPosition: 265;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'textcolor';
																		startPosition: 267;
																		stopPosition: 275;
																		yourself);
																arrayInformation: nil;
																startPosition: 266;
																stopPosition: 275;
																yourself);
														expressionAction: nil;
														startPosition: 266;
														stopPosition: 275;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 277;
																				stopPosition: 279;
																				yourself);
																		startPosition: 277;
																		stopPosition: 279;
																		yourself);
																expressionAction: nil;
																startPosition: 277;
																stopPosition: 279;
																yourself);
														startPosition: 276;
														stopPosition: 279;
														yourself);
												startPosition: 259;
												stopPosition: 279;
												yourself);
										startPosition: 259;
										stopPosition: 279;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 281;
																				stopPosition: 287;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 281;
																		stopPosition: 287;
																		yourself);
																arrayPosition: nil;
																startPosition: 281;
																stopPosition: 287;
																yourself);
														startPosition: 281;
														stopPosition: 287;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 289;
																		stopPosition: 300;
																		yourself);
																arrayInformation: nil;
																startPosition: 288;
																stopPosition: 300;
																yourself);
														expressionAction: nil;
														startPosition: 288;
														stopPosition: 300;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 302;
																				stopPosition: 304;
																				yourself);
																		startPosition: 302;
																		stopPosition: 304;
																		yourself);
																expressionAction: nil;
																startPosition: 302;
																stopPosition: 304;
																yourself);
														startPosition: 301;
														stopPosition: 304;
														yourself);
												startPosition: 281;
												stopPosition: 304;
												yourself);
										startPosition: 281;
										stopPosition: 304;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'clientname';
																				startPosition: 307;
																				stopPosition: 316;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 307;
																		stopPosition: 316;
																		yourself);
																arrayPosition: nil;
																startPosition: 307;
																stopPosition: 316;
																yourself);
														startPosition: 307;
														stopPosition: 316;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"untitled"';
																				startPosition: 318;
																				stopPosition: 327;
																				yourself);
																		startPosition: 318;
																		stopPosition: 327;
																		yourself);
																expressionAction: nil;
																startPosition: 318;
																stopPosition: 327;
																yourself);
														startPosition: 317;
														stopPosition: 327;
														yourself);
												startPosition: 307;
												stopPosition: 327;
												yourself);
										startPosition: 307;
										stopPosition: 327;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'range';
																				startPosition: 328;
																				stopPosition: 332;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 328;
																		stopPosition: 332;
																		yourself);
																arrayPosition: nil;
																startPosition: 328;
																stopPosition: 332;
																yourself);
														startPosition: 328;
														stopPosition: 332;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 334;
																				stopPosition: 334;
																				yourself);
																		startPosition: 334;
																		stopPosition: 334;
																		yourself);
																expressionAction: nil;
																startPosition: 334;
																stopPosition: 334;
																yourself);
														startPosition: 333;
														stopPosition: 334;
														yourself);
												startPosition: 328;
												stopPosition: 334;
												yourself);
										startPosition: 328;
										stopPosition: 334;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'binaryindex';
																				startPosition: 336;
																				stopPosition: 346;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 336;
																		stopPosition: 346;
																		yourself);
																arrayPosition: nil;
																startPosition: 336;
																stopPosition: 346;
																yourself);
														startPosition: 336;
														stopPosition: 346;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '1';
																				startPosition: 348;
																				stopPosition: 348;
																				yourself);
																		startPosition: 348;
																		stopPosition: 348;
																		yourself);
																expressionAction: nil;
																startPosition: 348;
																stopPosition: 348;
																yourself);
														startPosition: 347;
														stopPosition: 348;
														yourself);
												startPosition: 336;
												stopPosition: 348;
												yourself);
										startPosition: 336;
										stopPosition: 348;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'activation';
																				startPosition: 350;
																				stopPosition: 359;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 350;
																		stopPosition: 359;
																		yourself);
																arrayPosition: nil;
																startPosition: 350;
																stopPosition: 359;
																yourself);
														startPosition: 350;
														stopPosition: 359;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '1';
																				startPosition: 361;
																				stopPosition: 361;
																				yourself);
																		startPosition: 361;
																		stopPosition: 361;
																		yourself);
																expressionAction: nil;
																startPosition: 361;
																stopPosition: 361;
																yourself);
														startPosition: 360;
														stopPosition: 361;
														yourself);
												startPosition: 350;
												stopPosition: 361;
												yourself);
										startPosition: 350;
										stopPosition: 361;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'linkupdateoptions';
																				startPosition: 363;
																				stopPosition: 379;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 363;
																		stopPosition: 379;
																		yourself);
																arrayPosition: nil;
																startPosition: 363;
																stopPosition: 379;
																yourself);
														startPosition: 363;
														stopPosition: 379;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 381;
																				stopPosition: 381;
																				yourself);
																		startPosition: 381;
																		stopPosition: 381;
																		yourself);
																expressionAction: nil;
																startPosition: 381;
																stopPosition: 381;
																yourself);
														startPosition: 380;
														stopPosition: 381;
														yourself);
												startPosition: 363;
												stopPosition: 381;
												yourself);
										startPosition: 363;
										stopPosition: 381;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'contentsallowed';
																				startPosition: 383;
																				stopPosition: 397;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 383;
																		stopPosition: 397;
																		yourself);
																arrayPosition: nil;
																startPosition: 383;
																stopPosition: 397;
																yourself);
														startPosition: 383;
														stopPosition: 397;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '2';
																				startPosition: 399;
																				stopPosition: 399;
																				yourself);
																		startPosition: 399;
																		stopPosition: 399;
																		yourself);
																expressionAction: nil;
																startPosition: 399;
																stopPosition: 399;
																yourself);
														startPosition: 398;
														stopPosition: 399;
														yourself);
												startPosition: 383;
												stopPosition: 399;
												yourself);
										startPosition: 383;
										stopPosition: 399;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'displaytype';
																				startPosition: 401;
																				stopPosition: 411;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 401;
																		stopPosition: 411;
																		yourself);
																arrayPosition: nil;
																startPosition: 401;
																stopPosition: 411;
																yourself);
														startPosition: 401;
														stopPosition: 411;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '1';
																				startPosition: 413;
																				stopPosition: 413;
																				yourself);
																		startPosition: 413;
																		stopPosition: 413;
																		yourself);
																expressionAction: nil;
																startPosition: 413;
																stopPosition: 413;
																yourself);
														startPosition: 412;
														stopPosition: 413;
														yourself);
												startPosition: 401;
												stopPosition: 413;
												yourself);
										startPosition: 401;
										stopPosition: 413;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'ole_1';
																								startPosition: 421;
																								stopPosition: 425;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 421;
																						stopPosition: 425;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 421;
																				stopPosition: 425;
																				yourself);
																		startPosition: 421;
																		stopPosition: 425;
																		yourself);
																startPosition: 421;
																stopPosition: 425;
																yourself);
														expressionAction: nil;
														startPosition: 421;
														stopPosition: 425;
														yourself);
												startPosition: 416;
												stopPosition: 425;
												yourself);
										startPosition: 416;
										stopPosition: 425;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 427;
																				stopPosition: 433;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 427;
																		stopPosition: 433;
																		yourself);
																arrayPosition: nil;
																startPosition: 427;
																stopPosition: 433;
																yourself);
														startPosition: 427;
														stopPosition: 433;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1~t0"';
																				startPosition: 435;
																				stopPosition: 440;
																				yourself);
																		startPosition: 435;
																		stopPosition: 440;
																		yourself);
																expressionAction: nil;
																startPosition: 435;
																stopPosition: 440;
																yourself);
														startPosition: 434;
														stopPosition: 440;
														yourself);
												startPosition: 427;
												stopPosition: 440;
												yourself);
										startPosition: 427;
										stopPosition: 440;
										yourself)};
								startPosition: 5;
								stopPosition: 440;
								yourself);
						startPosition: 4;
						stopPosition: 442;
						yourself);
				startPosition: 1;
				stopPosition: 442;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent24 [
	<generated>
	self
		assert:
			(self
				parse: 'sparse(names="dossier_interne	no_ligne_dans_dossier")'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'sparse';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'names';
																				startPosition: 8;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 12;
																yourself);
														startPosition: 8;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"dossier_interne	no_ligne_dans_dossier"';
																				startPosition: 14;
																				stopPosition: 52;
																				yourself);
																		startPosition: 14;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 52;
																yourself);
														startPosition: 13;
														stopPosition: 52;
														yourself);
												startPosition: 8;
												stopPosition: 52;
												yourself);
										startPosition: 8;
										stopPosition: 52;
										yourself)};
								startPosition: 8;
								stopPosition: 52;
								yourself);
						startPosition: 7;
						stopPosition: 53;
						yourself);
				startPosition: 1;
				stopPosition: 53;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent25 [
	<generated>
	self
		assert:
			(self
				parse: 'sparse(names="dossier_interne	no_ligne_dans_dossier")'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'sparse';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'names';
																				startPosition: 8;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 12;
																yourself);
														startPosition: 8;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"dossier_interne	no_ligne_dans_dossier"';
																				startPosition: 14;
																				stopPosition: 52;
																				yourself);
																		startPosition: 14;
																		stopPosition: 52;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 52;
																yourself);
														startPosition: 13;
														stopPosition: 52;
														yourself);
												startPosition: 8;
												stopPosition: 52;
												yourself);
										startPosition: 8;
										stopPosition: 52;
										yourself)};
								startPosition: 8;
								stopPosition: 52;
								yourself);
						startPosition: 7;
						stopPosition: 53;
						yourself);
				startPosition: 1;
				stopPosition: 53;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent3 [
	<generated>
	self
		assert:
			(self
				parse: 'bitmap(band=detail filename="" x="3077" y="124" height="76" width="87" border="2" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0"  name=p_recherche_adn visible="1" transparency="0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'bitmap';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 8;
																				stopPosition: 11;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 11;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 11;
																yourself);
														startPosition: 8;
														stopPosition: 11;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 13;
																										stopPosition: 18;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 13;
																								stopPosition: 18;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 13;
																						stopPosition: 18;
																						yourself);
																				startPosition: 13;
																				stopPosition: 18;
																				yourself);
																		startPosition: 13;
																		stopPosition: 18;
																		yourself);
																expressionAction: nil;
																startPosition: 13;
																stopPosition: 18;
																yourself);
														startPosition: 12;
														stopPosition: 18;
														yourself);
												startPosition: 8;
												stopPosition: 18;
												yourself);
										startPosition: 8;
										stopPosition: 18;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'filename';
																				startPosition: 20;
																				stopPosition: 27;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 20;
																		stopPosition: 27;
																		yourself);
																arrayPosition: nil;
																startPosition: 20;
																stopPosition: 27;
																yourself);
														startPosition: 20;
														stopPosition: 27;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '""';
																				startPosition: 29;
																				stopPosition: 30;
																				yourself);
																		startPosition: 29;
																		stopPosition: 30;
																		yourself);
																expressionAction: nil;
																startPosition: 29;
																stopPosition: 30;
																yourself);
														startPosition: 28;
														stopPosition: 30;
														yourself);
												startPosition: 20;
												stopPosition: 30;
												yourself);
										startPosition: 20;
										stopPosition: 30;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 32;
																				stopPosition: 32;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 32;
																		stopPosition: 32;
																		yourself);
																arrayPosition: nil;
																startPosition: 32;
																stopPosition: 32;
																yourself);
														startPosition: 32;
														stopPosition: 32;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"3077"';
																				startPosition: 34;
																				stopPosition: 39;
																				yourself);
																		startPosition: 34;
																		stopPosition: 39;
																		yourself);
																expressionAction: nil;
																startPosition: 34;
																stopPosition: 39;
																yourself);
														startPosition: 33;
														stopPosition: 39;
														yourself);
												startPosition: 32;
												stopPosition: 39;
												yourself);
										startPosition: 32;
										stopPosition: 39;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 41;
																				stopPosition: 41;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 41;
																		stopPosition: 41;
																		yourself);
																arrayPosition: nil;
																startPosition: 41;
																stopPosition: 41;
																yourself);
														startPosition: 41;
														stopPosition: 41;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"124"';
																				startPosition: 43;
																				stopPosition: 47;
																				yourself);
																		startPosition: 43;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 43;
																stopPosition: 47;
																yourself);
														startPosition: 42;
														stopPosition: 47;
														yourself);
												startPosition: 41;
												stopPosition: 47;
												yourself);
										startPosition: 41;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 49;
																				stopPosition: 54;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 54;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 54;
																yourself);
														startPosition: 49;
														stopPosition: 54;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"76"';
																				startPosition: 56;
																				stopPosition: 59;
																				yourself);
																		startPosition: 56;
																		stopPosition: 59;
																		yourself);
																expressionAction: nil;
																startPosition: 56;
																stopPosition: 59;
																yourself);
														startPosition: 55;
														stopPosition: 59;
														yourself);
												startPosition: 49;
												stopPosition: 59;
												yourself);
										startPosition: 49;
										stopPosition: 59;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 61;
																				stopPosition: 65;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 61;
																		stopPosition: 65;
																		yourself);
																arrayPosition: nil;
																startPosition: 61;
																stopPosition: 65;
																yourself);
														startPosition: 61;
														stopPosition: 65;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"87"';
																				startPosition: 67;
																				stopPosition: 70;
																				yourself);
																		startPosition: 67;
																		stopPosition: 70;
																		yourself);
																expressionAction: nil;
																startPosition: 67;
																stopPosition: 70;
																yourself);
														startPosition: 66;
														stopPosition: 70;
														yourself);
												startPosition: 61;
												stopPosition: 70;
												yourself);
										startPosition: 61;
										stopPosition: 70;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'border';
																				startPosition: 72;
																				stopPosition: 77;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 72;
																		stopPosition: 77;
																		yourself);
																arrayPosition: nil;
																startPosition: 72;
																stopPosition: 77;
																yourself);
														startPosition: 72;
														stopPosition: 77;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2"';
																				startPosition: 79;
																				stopPosition: 81;
																				yourself);
																		startPosition: 79;
																		stopPosition: 81;
																		yourself);
																expressionAction: nil;
																startPosition: 79;
																stopPosition: 81;
																yourself);
														startPosition: 78;
														stopPosition: 81;
														yourself);
												startPosition: 72;
												stopPosition: 81;
												yourself);
										startPosition: 72;
										stopPosition: 81;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 83;
																				stopPosition: 89;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 83;
																		stopPosition: 89;
																		yourself);
																arrayPosition: nil;
																startPosition: 83;
																stopPosition: 89;
																yourself);
														startPosition: 83;
														stopPosition: 89;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'backcolor';
																		startPosition: 91;
																		stopPosition: 99;
																		yourself);
																arrayInformation: nil;
																startPosition: 90;
																stopPosition: 99;
																yourself);
														expressionAction: nil;
														startPosition: 90;
														stopPosition: 99;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"134217752"';
																				startPosition: 101;
																				stopPosition: 111;
																				yourself);
																		startPosition: 101;
																		stopPosition: 111;
																		yourself);
																expressionAction: nil;
																startPosition: 101;
																stopPosition: 111;
																yourself);
														startPosition: 100;
														stopPosition: 111;
														yourself);
												startPosition: 83;
												stopPosition: 111;
												yourself);
										startPosition: 83;
										stopPosition: 111;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 113;
																				stopPosition: 119;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 113;
																		stopPosition: 119;
																		yourself);
																arrayPosition: nil;
																startPosition: 113;
																stopPosition: 119;
																yourself);
														startPosition: 113;
														stopPosition: 119;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'delay';
																		startPosition: 121;
																		stopPosition: 125;
																		yourself);
																arrayInformation: nil;
																startPosition: 120;
																stopPosition: 125;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'initial';
																				startPosition: 127;
																				stopPosition: 133;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 126;
																		stopPosition: 133;
																		yourself);
																expressionAction: nil;
																startPosition: 126;
																stopPosition: 133;
																yourself);
														startPosition: 120;
														stopPosition: 133;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 135;
																				stopPosition: 137;
																				yourself);
																		startPosition: 135;
																		stopPosition: 137;
																		yourself);
																expressionAction: nil;
																startPosition: 135;
																stopPosition: 137;
																yourself);
														startPosition: 134;
														stopPosition: 137;
														yourself);
												startPosition: 113;
												stopPosition: 137;
												yourself);
										startPosition: 113;
										stopPosition: 137;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 139;
																				stopPosition: 145;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 139;
																		stopPosition: 145;
																		yourself);
																arrayPosition: nil;
																startPosition: 139;
																stopPosition: 145;
																yourself);
														startPosition: 139;
														stopPosition: 145;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'delay';
																		startPosition: 147;
																		stopPosition: 151;
																		yourself);
																arrayInformation: nil;
																startPosition: 146;
																stopPosition: 151;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'visible';
																				startPosition: 153;
																				stopPosition: 159;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 152;
																		stopPosition: 159;
																		yourself);
																expressionAction: nil;
																startPosition: 152;
																stopPosition: 159;
																yourself);
														startPosition: 146;
														stopPosition: 159;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"32000"';
																				startPosition: 161;
																				stopPosition: 167;
																				yourself);
																		startPosition: 161;
																		stopPosition: 167;
																		yourself);
																expressionAction: nil;
																startPosition: 161;
																stopPosition: 167;
																yourself);
														startPosition: 160;
														stopPosition: 167;
														yourself);
												startPosition: 139;
												stopPosition: 167;
												yourself);
										startPosition: 139;
										stopPosition: 167;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 169;
																				stopPosition: 175;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 169;
																		stopPosition: 175;
																		yourself);
																arrayPosition: nil;
																startPosition: 169;
																stopPosition: 175;
																yourself);
														startPosition: 169;
														stopPosition: 175;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'enabled';
																		startPosition: 177;
																		stopPosition: 183;
																		yourself);
																arrayInformation: nil;
																startPosition: 176;
																stopPosition: 183;
																yourself);
														expressionAction: nil;
														startPosition: 176;
														stopPosition: 183;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 185;
																				stopPosition: 187;
																				yourself);
																		startPosition: 185;
																		stopPosition: 187;
																		yourself);
																expressionAction: nil;
																startPosition: 185;
																stopPosition: 187;
																yourself);
														startPosition: 184;
														stopPosition: 187;
														yourself);
												startPosition: 169;
												stopPosition: 187;
												yourself);
										startPosition: 169;
										stopPosition: 187;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 189;
																				stopPosition: 195;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 189;
																		stopPosition: 195;
																		yourself);
																arrayPosition: nil;
																startPosition: 189;
																stopPosition: 195;
																yourself);
														startPosition: 189;
														stopPosition: 195;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hasclosebutton';
																		startPosition: 197;
																		stopPosition: 210;
																		yourself);
																arrayInformation: nil;
																startPosition: 196;
																stopPosition: 210;
																yourself);
														expressionAction: nil;
														startPosition: 196;
														stopPosition: 210;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 212;
																				stopPosition: 214;
																				yourself);
																		startPosition: 212;
																		stopPosition: 214;
																		yourself);
																expressionAction: nil;
																startPosition: 212;
																stopPosition: 214;
																yourself);
														startPosition: 211;
														stopPosition: 214;
														yourself);
												startPosition: 189;
												stopPosition: 214;
												yourself);
										startPosition: 189;
										stopPosition: 214;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 216;
																				stopPosition: 222;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 216;
																		stopPosition: 222;
																		yourself);
																arrayPosition: nil;
																startPosition: 216;
																stopPosition: 222;
																yourself);
														startPosition: 216;
														stopPosition: 222;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'icon';
																		startPosition: 224;
																		stopPosition: 227;
																		yourself);
																arrayInformation: nil;
																startPosition: 223;
																stopPosition: 227;
																yourself);
														expressionAction: nil;
														startPosition: 223;
														stopPosition: 227;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 229;
																				stopPosition: 231;
																				yourself);
																		startPosition: 229;
																		stopPosition: 231;
																		yourself);
																expressionAction: nil;
																startPosition: 229;
																stopPosition: 231;
																yourself);
														startPosition: 228;
														stopPosition: 231;
														yourself);
												startPosition: 216;
												stopPosition: 231;
												yourself);
										startPosition: 216;
										stopPosition: 231;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 233;
																				stopPosition: 239;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 233;
																		stopPosition: 239;
																		yourself);
																arrayPosition: nil;
																startPosition: 233;
																stopPosition: 239;
																yourself);
														startPosition: 233;
														stopPosition: 239;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'isbubble';
																		startPosition: 241;
																		stopPosition: 248;
																		yourself);
																arrayInformation: nil;
																startPosition: 240;
																stopPosition: 248;
																yourself);
														expressionAction: nil;
														startPosition: 240;
														stopPosition: 248;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 250;
																				stopPosition: 252;
																				yourself);
																		startPosition: 250;
																		stopPosition: 252;
																		yourself);
																expressionAction: nil;
																startPosition: 250;
																stopPosition: 252;
																yourself);
														startPosition: 249;
														stopPosition: 252;
														yourself);
												startPosition: 233;
												stopPosition: 252;
												yourself);
										startPosition: 233;
										stopPosition: 252;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 254;
																				stopPosition: 260;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 254;
																		stopPosition: 260;
																		yourself);
																arrayPosition: nil;
																startPosition: 254;
																stopPosition: 260;
																yourself);
														startPosition: 254;
														stopPosition: 260;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'maxwidth';
																		startPosition: 262;
																		stopPosition: 269;
																		yourself);
																arrayInformation: nil;
																startPosition: 261;
																stopPosition: 269;
																yourself);
														expressionAction: nil;
														startPosition: 261;
														stopPosition: 269;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 271;
																				stopPosition: 273;
																				yourself);
																		startPosition: 271;
																		stopPosition: 273;
																		yourself);
																expressionAction: nil;
																startPosition: 271;
																stopPosition: 273;
																yourself);
														startPosition: 270;
														stopPosition: 273;
														yourself);
												startPosition: 254;
												stopPosition: 273;
												yourself);
										startPosition: 254;
										stopPosition: 273;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 275;
																				stopPosition: 281;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 275;
																		stopPosition: 281;
																		yourself);
																arrayPosition: nil;
																startPosition: 275;
																stopPosition: 281;
																yourself);
														startPosition: 275;
														stopPosition: 281;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'textcolor';
																		startPosition: 283;
																		stopPosition: 291;
																		yourself);
																arrayInformation: nil;
																startPosition: 282;
																stopPosition: 291;
																yourself);
														expressionAction: nil;
														startPosition: 282;
														stopPosition: 291;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"134217751"';
																				startPosition: 293;
																				stopPosition: 303;
																				yourself);
																		startPosition: 293;
																		stopPosition: 303;
																		yourself);
																expressionAction: nil;
																startPosition: 293;
																stopPosition: 303;
																yourself);
														startPosition: 292;
														stopPosition: 303;
														yourself);
												startPosition: 275;
												stopPosition: 303;
												yourself);
										startPosition: 275;
										stopPosition: 303;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'tooltip';
																				startPosition: 305;
																				stopPosition: 311;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 305;
																		stopPosition: 311;
																		yourself);
																arrayPosition: nil;
																startPosition: 305;
																stopPosition: 311;
																yourself);
														startPosition: 305;
														stopPosition: 311;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 313;
																		stopPosition: 324;
																		yourself);
																arrayInformation: nil;
																startPosition: 312;
																stopPosition: 324;
																yourself);
														expressionAction: nil;
														startPosition: 312;
														stopPosition: 324;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 326;
																				stopPosition: 328;
																				yourself);
																		startPosition: 326;
																		stopPosition: 328;
																		yourself);
																expressionAction: nil;
																startPosition: 326;
																stopPosition: 328;
																yourself);
														startPosition: 325;
														stopPosition: 328;
														yourself);
												startPosition: 305;
												stopPosition: 328;
												yourself);
										startPosition: 305;
										stopPosition: 328;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'p_recherche_adn';
																								startPosition: 336;
																								stopPosition: 350;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 336;
																						stopPosition: 350;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 336;
																				stopPosition: 350;
																				yourself);
																		startPosition: 336;
																		stopPosition: 350;
																		yourself);
																startPosition: 336;
																stopPosition: 350;
																yourself);
														expressionAction: nil;
														startPosition: 336;
														stopPosition: 350;
														yourself);
												startPosition: 331;
												stopPosition: 350;
												yourself);
										startPosition: 331;
										stopPosition: 350;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 352;
																				stopPosition: 358;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 352;
																		stopPosition: 358;
																		yourself);
																arrayPosition: nil;
																startPosition: 352;
																stopPosition: 358;
																yourself);
														startPosition: 352;
														stopPosition: 358;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 360;
																				stopPosition: 362;
																				yourself);
																		startPosition: 360;
																		stopPosition: 362;
																		yourself);
																expressionAction: nil;
																startPosition: 360;
																stopPosition: 362;
																yourself);
														startPosition: 359;
														stopPosition: 362;
														yourself);
												startPosition: 352;
												stopPosition: 362;
												yourself);
										startPosition: 352;
										stopPosition: 362;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 364;
																				stopPosition: 375;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 364;
																		stopPosition: 375;
																		yourself);
																arrayPosition: nil;
																startPosition: 364;
																stopPosition: 375;
																yourself);
														startPosition: 364;
														stopPosition: 375;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 377;
																				stopPosition: 379;
																				yourself);
																		startPosition: 377;
																		stopPosition: 379;
																		yourself);
																expressionAction: nil;
																startPosition: 377;
																stopPosition: 379;
																yourself);
														startPosition: 376;
														stopPosition: 379;
														yourself);
												startPosition: 364;
												stopPosition: 379;
												yourself);
										startPosition: 364;
										stopPosition: 379;
										yourself)};
								startPosition: 8;
								stopPosition: 379;
								yourself);
						startPosition: 7;
						stopPosition: 381;
						yourself);
				startPosition: 1;
				stopPosition: 381;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent4 [
	<generated>
	self
		assert:
			(self
				parse: 'report(band=detail dataobject="bdwl_iri_510" x="1" y="20" height="137" width="3530" border="0" height.autosize=yes criteria="" nest_arguments=(("ad_seq_num"),("devise")) trail_footer = yes name=dw_det_1 slideup=directlyabove )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'report';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 8;
																				stopPosition: 11;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 11;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 11;
																yourself);
														startPosition: 8;
														stopPosition: 11;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 13;
																										stopPosition: 18;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 13;
																								stopPosition: 18;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 13;
																						stopPosition: 18;
																						yourself);
																				startPosition: 13;
																				stopPosition: 18;
																				yourself);
																		startPosition: 13;
																		stopPosition: 18;
																		yourself);
																expressionAction: nil;
																startPosition: 13;
																stopPosition: 18;
																yourself);
														startPosition: 12;
														stopPosition: 18;
														yourself);
												startPosition: 8;
												stopPosition: 18;
												yourself);
										startPosition: 8;
										stopPosition: 18;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'dataobject';
																				startPosition: 20;
																				stopPosition: 29;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 20;
																		stopPosition: 29;
																		yourself);
																arrayPosition: nil;
																startPosition: 20;
																stopPosition: 29;
																yourself);
														startPosition: 20;
														stopPosition: 29;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"bdwl_iri_510"';
																				startPosition: 31;
																				stopPosition: 44;
																				yourself);
																		startPosition: 31;
																		stopPosition: 44;
																		yourself);
																expressionAction: nil;
																startPosition: 31;
																stopPosition: 44;
																yourself);
														startPosition: 30;
														stopPosition: 44;
														yourself);
												startPosition: 20;
												stopPosition: 44;
												yourself);
										startPosition: 20;
										stopPosition: 44;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 46;
																				stopPosition: 46;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 46;
																		stopPosition: 46;
																		yourself);
																arrayPosition: nil;
																startPosition: 46;
																stopPosition: 46;
																yourself);
														startPosition: 46;
														stopPosition: 46;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 48;
																				stopPosition: 50;
																				yourself);
																		startPosition: 48;
																		stopPosition: 50;
																		yourself);
																expressionAction: nil;
																startPosition: 48;
																stopPosition: 50;
																yourself);
														startPosition: 47;
														stopPosition: 50;
														yourself);
												startPosition: 46;
												stopPosition: 50;
												yourself);
										startPosition: 46;
										stopPosition: 50;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 52;
																				stopPosition: 52;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 52;
																		stopPosition: 52;
																		yourself);
																arrayPosition: nil;
																startPosition: 52;
																stopPosition: 52;
																yourself);
														startPosition: 52;
														stopPosition: 52;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"20"';
																				startPosition: 54;
																				stopPosition: 57;
																				yourself);
																		startPosition: 54;
																		stopPosition: 57;
																		yourself);
																expressionAction: nil;
																startPosition: 54;
																stopPosition: 57;
																yourself);
														startPosition: 53;
														stopPosition: 57;
														yourself);
												startPosition: 52;
												stopPosition: 57;
												yourself);
										startPosition: 52;
										stopPosition: 57;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 59;
																				stopPosition: 64;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 59;
																		stopPosition: 64;
																		yourself);
																arrayPosition: nil;
																startPosition: 59;
																stopPosition: 64;
																yourself);
														startPosition: 59;
														stopPosition: 64;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"137"';
																				startPosition: 66;
																				stopPosition: 70;
																				yourself);
																		startPosition: 66;
																		stopPosition: 70;
																		yourself);
																expressionAction: nil;
																startPosition: 66;
																stopPosition: 70;
																yourself);
														startPosition: 65;
														stopPosition: 70;
														yourself);
												startPosition: 59;
												stopPosition: 70;
												yourself);
										startPosition: 59;
										stopPosition: 70;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 72;
																				stopPosition: 76;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 72;
																		stopPosition: 76;
																		yourself);
																arrayPosition: nil;
																startPosition: 72;
																stopPosition: 76;
																yourself);
														startPosition: 72;
														stopPosition: 76;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"3530"';
																				startPosition: 78;
																				stopPosition: 83;
																				yourself);
																		startPosition: 78;
																		stopPosition: 83;
																		yourself);
																expressionAction: nil;
																startPosition: 78;
																stopPosition: 83;
																yourself);
														startPosition: 77;
														stopPosition: 83;
														yourself);
												startPosition: 72;
												stopPosition: 83;
												yourself);
										startPosition: 72;
										stopPosition: 83;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'border';
																				startPosition: 85;
																				stopPosition: 90;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 85;
																		stopPosition: 90;
																		yourself);
																arrayPosition: nil;
																startPosition: 85;
																stopPosition: 90;
																yourself);
														startPosition: 85;
														stopPosition: 90;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 92;
																				stopPosition: 94;
																				yourself);
																		startPosition: 92;
																		stopPosition: 94;
																		yourself);
																expressionAction: nil;
																startPosition: 92;
																stopPosition: 94;
																yourself);
														startPosition: 91;
														stopPosition: 94;
														yourself);
												startPosition: 85;
												stopPosition: 94;
												yourself);
										startPosition: 85;
										stopPosition: 94;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 96;
																				stopPosition: 101;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 96;
																		stopPosition: 101;
																		yourself);
																arrayPosition: nil;
																startPosition: 96;
																stopPosition: 101;
																yourself);
														startPosition: 96;
														stopPosition: 101;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'autosize';
																		startPosition: 103;
																		stopPosition: 110;
																		yourself);
																arrayInformation: nil;
																startPosition: 102;
																stopPosition: 110;
																yourself);
														expressionAction: nil;
														startPosition: 102;
														stopPosition: 110;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'yes';
																										startPosition: 112;
																										stopPosition: 114;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 112;
																								stopPosition: 114;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 112;
																						stopPosition: 114;
																						yourself);
																				startPosition: 112;
																				stopPosition: 114;
																				yourself);
																		startPosition: 112;
																		stopPosition: 114;
																		yourself);
																expressionAction: nil;
																startPosition: 112;
																stopPosition: 114;
																yourself);
														startPosition: 111;
														stopPosition: 114;
														yourself);
												startPosition: 96;
												stopPosition: 114;
												yourself);
										startPosition: 96;
										stopPosition: 114;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'criteria';
																				startPosition: 116;
																				stopPosition: 123;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 116;
																		stopPosition: 123;
																		yourself);
																arrayPosition: nil;
																startPosition: 116;
																stopPosition: 123;
																yourself);
														startPosition: 116;
														stopPosition: 123;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '""';
																				startPosition: 125;
																				stopPosition: 126;
																				yourself);
																		startPosition: 125;
																		stopPosition: 126;
																		yourself);
																expressionAction: nil;
																startPosition: 125;
																stopPosition: 126;
																yourself);
														startPosition: 124;
														stopPosition: 126;
														yourself);
												startPosition: 116;
												stopPosition: 126;
												yourself);
										startPosition: 116;
										stopPosition: 126;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'nest_arguments';
																				startPosition: 128;
																				stopPosition: 141;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 128;
																		stopPosition: 141;
																		yourself);
																arrayPosition: nil;
																startPosition: 128;
																stopPosition: 141;
																yourself);
														startPosition: 128;
														stopPosition: 141;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedArray new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTParenthesedExpression new
																						expression:
																							(PWBASTExpression new
																								expression:
																									(PWBASTExpressionTerm new
																										expressionTerm:
																											(PWBASTString new
																												string: '"ad_seq_num"';
																												startPosition: 145;
																												stopPosition: 156;
																												yourself);
																										startPosition: 145;
																										stopPosition: 156;
																										yourself);
																								expressionAction: nil;
																								startPosition: 145;
																								stopPosition: 156;
																								yourself);
																						startPosition: 144;
																						stopPosition: 157;
																						yourself);
																				expressionAction: nil;
																				startPosition: 144;
																				stopPosition: 157;
																				yourself);
																		expressions:
																			(OrderedCollection
																				withAll:
																					{(PWBASTExpression new
																						expression:
																							(PWBASTParenthesedExpression new
																								expression:
																									(PWBASTExpression new
																										expression:
																											(PWBASTExpressionTerm new
																												expressionTerm:
																													(PWBASTString new
																														string: '"devise"';
																														startPosition: 160;
																														stopPosition: 167;
																														yourself);
																												startPosition: 160;
																												stopPosition: 167;
																												yourself);
																										expressionAction: nil;
																										startPosition: 160;
																										stopPosition: 167;
																										yourself);
																								startPosition: 159;
																								stopPosition: 168;
																								yourself);
																						expressionAction: nil;
																						startPosition: 159;
																						stopPosition: 168;
																						yourself)});
																		startPosition: 143;
																		stopPosition: 169;
																		yourself);
																expressionAction: nil;
																startPosition: 143;
																stopPosition: 169;
																yourself);
														startPosition: 142;
														stopPosition: 169;
														yourself);
												startPosition: 128;
												stopPosition: 169;
												yourself);
										startPosition: 128;
										stopPosition: 169;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'trail_footer';
																				startPosition: 171;
																				stopPosition: 182;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 171;
																		stopPosition: 182;
																		yourself);
																arrayPosition: nil;
																startPosition: 171;
																stopPosition: 182;
																yourself);
														startPosition: 171;
														stopPosition: 182;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'yes';
																										startPosition: 186;
																										stopPosition: 188;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 186;
																								stopPosition: 188;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 186;
																						stopPosition: 188;
																						yourself);
																				startPosition: 186;
																				stopPosition: 188;
																				yourself);
																		startPosition: 186;
																		stopPosition: 188;
																		yourself);
																expressionAction: nil;
																startPosition: 186;
																stopPosition: 188;
																yourself);
														startPosition: 183;
														stopPosition: 188;
														yourself);
												startPosition: 171;
												stopPosition: 188;
												yourself);
										startPosition: 171;
										stopPosition: 188;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'dw_det_1';
																								startPosition: 195;
																								stopPosition: 202;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 195;
																						stopPosition: 202;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 195;
																				stopPosition: 202;
																				yourself);
																		startPosition: 195;
																		stopPosition: 202;
																		yourself);
																startPosition: 195;
																stopPosition: 202;
																yourself);
														expressionAction: nil;
														startPosition: 195;
														stopPosition: 202;
														yourself);
												startPosition: 190;
												stopPosition: 202;
												yourself);
										startPosition: 190;
										stopPosition: 202;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'slideup';
																				startPosition: 204;
																				stopPosition: 210;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 204;
																		stopPosition: 210;
																		yourself);
																arrayPosition: nil;
																startPosition: 204;
																stopPosition: 210;
																yourself);
														startPosition: 204;
														stopPosition: 210;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'directlyabove';
																										startPosition: 212;
																										stopPosition: 224;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 212;
																								stopPosition: 224;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 212;
																						stopPosition: 224;
																						yourself);
																				startPosition: 212;
																				stopPosition: 224;
																				yourself);
																		startPosition: 212;
																		stopPosition: 224;
																		yourself);
																expressionAction: nil;
																startPosition: 212;
																stopPosition: 224;
																yourself);
														startPosition: 211;
														stopPosition: 224;
														yourself);
												startPosition: 204;
												stopPosition: 224;
												yourself);
										startPosition: 204;
										stopPosition: 224;
										yourself)};
								startPosition: 8;
								stopPosition: 224;
								yourself);
						startPosition: 7;
						stopPosition: 226;
						yourself);
				startPosition: 1;
				stopPosition: 226;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent5 [
	<generated>
	self
		assert:
			(self
				parse: 'footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'footer';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '0';
																				startPosition: 15;
																				stopPosition: 15;
																				yourself);
																		startPosition: 15;
																		stopPosition: 15;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 15;
																yourself);
														startPosition: 14;
														stopPosition: 15;
														yourself);
												startPosition: 8;
												stopPosition: 15;
												yourself);
										startPosition: 8;
										stopPosition: 15;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 17;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 17;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 17;
																stopPosition: 21;
																yourself);
														startPosition: 17;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 23;
																				stopPosition: 33;
																				yourself);
																		startPosition: 23;
																		stopPosition: 33;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 33;
																yourself);
														startPosition: 22;
														stopPosition: 33;
														yourself);
												startPosition: 17;
												stopPosition: 33;
												yourself);
										startPosition: 17;
										stopPosition: 33;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 35;
																				stopPosition: 46;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 35;
																		stopPosition: 46;
																		yourself);
																arrayPosition: nil;
																startPosition: 35;
																stopPosition: 46;
																yourself);
														startPosition: 35;
														stopPosition: 46;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 48;
																				stopPosition: 50;
																				yourself);
																		startPosition: 48;
																		stopPosition: 50;
																		yourself);
																expressionAction: nil;
																startPosition: 48;
																stopPosition: 50;
																yourself);
														startPosition: 47;
														stopPosition: 50;
														yourself);
												startPosition: 35;
												stopPosition: 50;
												yourself);
										startPosition: 35;
										stopPosition: 50;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 52;
																				stopPosition: 59;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 52;
																		stopPosition: 59;
																		yourself);
																arrayPosition: nil;
																startPosition: 52;
																stopPosition: 59;
																yourself);
														startPosition: 52;
														stopPosition: 59;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 61;
																		stopPosition: 65;
																		yourself);
																arrayInformation: nil;
																startPosition: 60;
																stopPosition: 65;
																yourself);
														expressionAction: nil;
														startPosition: 60;
														stopPosition: 65;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 67;
																				stopPosition: 75;
																				yourself);
																		startPosition: 67;
																		stopPosition: 75;
																		yourself);
																expressionAction: nil;
																startPosition: 67;
																stopPosition: 75;
																yourself);
														startPosition: 66;
														stopPosition: 75;
														yourself);
												startPosition: 52;
												stopPosition: 75;
												yourself);
										startPosition: 52;
										stopPosition: 75;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 77;
																				stopPosition: 84;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 77;
																		stopPosition: 84;
																		yourself);
																arrayPosition: nil;
																startPosition: 77;
																stopPosition: 84;
																yourself);
														startPosition: 77;
														stopPosition: 84;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 86;
																		stopPosition: 97;
																		yourself);
																arrayInformation: nil;
																startPosition: 85;
																stopPosition: 97;
																yourself);
														expressionAction: nil;
														startPosition: 85;
														stopPosition: 97;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 99;
																				stopPosition: 101;
																				yourself);
																		startPosition: 99;
																		stopPosition: 101;
																		yourself);
																expressionAction: nil;
																startPosition: 99;
																stopPosition: 101;
																yourself);
														startPosition: 98;
														stopPosition: 101;
														yourself);
												startPosition: 77;
												stopPosition: 101;
												yourself);
										startPosition: 77;
										stopPosition: 101;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 103;
																				stopPosition: 110;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 103;
																		stopPosition: 110;
																		yourself);
																arrayPosition: nil;
																startPosition: 103;
																stopPosition: 110;
																yourself);
														startPosition: 103;
														stopPosition: 110;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 112;
																		stopPosition: 116;
																		yourself);
																arrayInformation: nil;
																startPosition: 111;
																stopPosition: 116;
																yourself);
														expressionAction: nil;
														startPosition: 111;
														stopPosition: 116;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 118;
																				stopPosition: 120;
																				yourself);
																		startPosition: 118;
																		stopPosition: 120;
																		yourself);
																expressionAction: nil;
																startPosition: 118;
																stopPosition: 120;
																yourself);
														startPosition: 117;
														stopPosition: 120;
														yourself);
												startPosition: 103;
												stopPosition: 120;
												yourself);
										startPosition: 103;
										stopPosition: 120;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 122;
																				stopPosition: 130;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 122;
																		stopPosition: 130;
																		yourself);
																arrayPosition: nil;
																startPosition: 122;
																stopPosition: 130;
																yourself);
														startPosition: 122;
														stopPosition: 130;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 132;
																				stopPosition: 134;
																				yourself);
																		startPosition: 132;
																		stopPosition: 134;
																		yourself);
																expressionAction: nil;
																startPosition: 132;
																stopPosition: 134;
																yourself);
														startPosition: 131;
														stopPosition: 134;
														yourself);
												startPosition: 122;
												stopPosition: 134;
												yourself);
										startPosition: 122;
										stopPosition: 134;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 136;
																				stopPosition: 143;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 136;
																		stopPosition: 143;
																		yourself);
																arrayPosition: nil;
																startPosition: 136;
																stopPosition: 143;
																yourself);
														startPosition: 136;
														stopPosition: 143;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 145;
																		stopPosition: 154;
																		yourself);
																arrayInformation: nil;
																startPosition: 144;
																stopPosition: 154;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 156;
																				stopPosition: 159;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 155;
																		stopPosition: 159;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 159;
																yourself);
														startPosition: 144;
														stopPosition: 159;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 161;
																				stopPosition: 163;
																				yourself);
																		startPosition: 161;
																		stopPosition: 163;
																		yourself);
																expressionAction: nil;
																startPosition: 161;
																stopPosition: 163;
																yourself);
														startPosition: 160;
														stopPosition: 163;
														yourself);
												startPosition: 136;
												stopPosition: 163;
												yourself);
										startPosition: 136;
										stopPosition: 163;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 165;
																				stopPosition: 172;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 165;
																		stopPosition: 172;
																		yourself);
																arrayPosition: nil;
																startPosition: 165;
																stopPosition: 172;
																yourself);
														startPosition: 165;
														stopPosition: 172;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 174;
																		stopPosition: 183;
																		yourself);
																arrayInformation: nil;
																startPosition: 173;
																stopPosition: 183;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 185;
																				stopPosition: 189;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 184;
																		stopPosition: 189;
																		yourself);
																expressionAction: nil;
																startPosition: 184;
																stopPosition: 189;
																yourself);
														startPosition: 173;
														stopPosition: 189;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 191;
																				stopPosition: 193;
																				yourself);
																		startPosition: 191;
																		stopPosition: 193;
																		yourself);
																expressionAction: nil;
																startPosition: 191;
																stopPosition: 193;
																yourself);
														startPosition: 190;
														stopPosition: 193;
														yourself);
												startPosition: 165;
												stopPosition: 193;
												yourself);
										startPosition: 165;
										stopPosition: 193;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 195;
																				stopPosition: 202;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 195;
																		stopPosition: 202;
																		yourself);
																arrayPosition: nil;
																startPosition: 195;
																stopPosition: 202;
																yourself);
														startPosition: 195;
														stopPosition: 202;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 204;
																		stopPosition: 213;
																		yourself);
																arrayInformation: nil;
																startPosition: 203;
																stopPosition: 213;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 215;
																				stopPosition: 220;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 214;
																		stopPosition: 220;
																		yourself);
																expressionAction: nil;
																startPosition: 214;
																stopPosition: 220;
																yourself);
														startPosition: 203;
														stopPosition: 220;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 222;
																				stopPosition: 226;
																				yourself);
																		startPosition: 222;
																		stopPosition: 226;
																		yourself);
																expressionAction: nil;
																startPosition: 222;
																stopPosition: 226;
																yourself);
														startPosition: 221;
														stopPosition: 226;
														yourself);
												startPosition: 195;
												stopPosition: 226;
												yourself);
										startPosition: 195;
										stopPosition: 226;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 228;
																				stopPosition: 235;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 228;
																		stopPosition: 235;
																		yourself);
																arrayPosition: nil;
																startPosition: 228;
																stopPosition: 235;
																yourself);
														startPosition: 228;
														stopPosition: 235;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 237;
																		stopPosition: 241;
																		yourself);
																arrayInformation: nil;
																startPosition: 236;
																stopPosition: 241;
																yourself);
														expressionAction: nil;
														startPosition: 236;
														stopPosition: 241;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 243;
																				stopPosition: 245;
																				yourself);
																		startPosition: 243;
																		stopPosition: 245;
																		yourself);
																expressionAction: nil;
																startPosition: 243;
																stopPosition: 245;
																yourself);
														startPosition: 242;
														stopPosition: 245;
														yourself);
												startPosition: 228;
												stopPosition: 245;
												yourself);
										startPosition: 228;
										stopPosition: 245;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 247;
																				stopPosition: 254;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 247;
																		stopPosition: 254;
																		yourself);
																arrayPosition: nil;
																startPosition: 247;
																stopPosition: 254;
																yourself);
														startPosition: 247;
														stopPosition: 254;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 256;
																		stopPosition: 260;
																		yourself);
																arrayInformation: nil;
																startPosition: 255;
																stopPosition: 260;
																yourself);
														expressionAction: nil;
														startPosition: 255;
														stopPosition: 260;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 262;
																				stopPosition: 266;
																				yourself);
																		startPosition: 262;
																		stopPosition: 266;
																		yourself);
																expressionAction: nil;
																startPosition: 262;
																stopPosition: 266;
																yourself);
														startPosition: 261;
														stopPosition: 266;
														yourself);
												startPosition: 247;
												stopPosition: 266;
												yourself);
										startPosition: 247;
										stopPosition: 266;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 268;
																				stopPosition: 275;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 268;
																		stopPosition: 275;
																		yourself);
																arrayPosition: nil;
																startPosition: 268;
																stopPosition: 275;
																yourself);
														startPosition: 268;
														stopPosition: 275;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 277;
																		stopPosition: 282;
																		yourself);
																arrayInformation: nil;
																startPosition: 276;
																stopPosition: 282;
																yourself);
														expressionAction: nil;
														startPosition: 276;
														stopPosition: 282;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 284;
																				stopPosition: 288;
																				yourself);
																		startPosition: 284;
																		stopPosition: 288;
																		yourself);
																expressionAction: nil;
																startPosition: 284;
																stopPosition: 288;
																yourself);
														startPosition: 283;
														stopPosition: 288;
														yourself);
												startPosition: 268;
												stopPosition: 288;
												yourself);
										startPosition: 268;
										stopPosition: 288;
										yourself)};
								startPosition: 8;
								stopPosition: 288;
								yourself);
						startPosition: 7;
						stopPosition: 290;
						yourself);
				startPosition: 1;
				stopPosition: 290;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent6 [
	<generated>
	self
		assert:
			(self
				parse: 'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'ellipse';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 9;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 12;
																yourself);
														startPosition: 9;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 14;
																										stopPosition: 19;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 14;
																								stopPosition: 19;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 14;
																						stopPosition: 19;
																						yourself);
																				startPosition: 14;
																				stopPosition: 19;
																				yourself);
																		startPosition: 14;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 19;
																yourself);
														startPosition: 13;
														stopPosition: 19;
														yourself);
												startPosition: 9;
												stopPosition: 19;
												yourself);
										startPosition: 9;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 21;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 21;
																yourself);
														startPosition: 21;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2350"';
																				startPosition: 23;
																				stopPosition: 28;
																				yourself);
																		startPosition: 23;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself);
												startPosition: 21;
												stopPosition: 28;
												yourself);
										startPosition: 21;
										stopPosition: 28;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 30;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 30;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 30;
																stopPosition: 30;
																yourself);
														startPosition: 30;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"32"';
																				startPosition: 32;
																				stopPosition: 35;
																				yourself);
																		startPosition: 32;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 35;
																yourself);
														startPosition: 31;
														stopPosition: 35;
														yourself);
												startPosition: 30;
												stopPosition: 35;
												yourself);
										startPosition: 30;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 37;
																				stopPosition: 42;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 42;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 42;
																yourself);
														startPosition: 37;
														stopPosition: 42;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"36"';
																				startPosition: 44;
																				stopPosition: 47;
																				yourself);
																		startPosition: 44;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 44;
																stopPosition: 47;
																yourself);
														startPosition: 43;
														stopPosition: 47;
														yourself);
												startPosition: 37;
												stopPosition: 47;
												yourself);
										startPosition: 37;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 49;
																				stopPosition: 53;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 53;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 53;
																yourself);
														startPosition: 49;
														stopPosition: 53;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"41"';
																				startPosition: 55;
																				stopPosition: 58;
																				yourself);
																		startPosition: 55;
																		stopPosition: 58;
																		yourself);
																expressionAction: nil;
																startPosition: 55;
																stopPosition: 58;
																yourself);
														startPosition: 54;
														stopPosition: 58;
														yourself);
												startPosition: 49;
												stopPosition: 58;
												yourself);
										startPosition: 49;
										stopPosition: 58;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'tem_dtc';
																								startPosition: 66;
																								stopPosition: 72;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 66;
																						stopPosition: 72;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 66;
																				stopPosition: 72;
																				yourself);
																		startPosition: 66;
																		stopPosition: 72;
																		yourself);
																startPosition: 66;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 66;
														stopPosition: 72;
														yourself);
												startPosition: 61;
												stopPosition: 72;
												yourself);
										startPosition: 61;
										stopPosition: 72;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 74;
																				stopPosition: 80;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 74;
																		stopPosition: 80;
																		yourself);
																arrayPosition: nil;
																startPosition: 74;
																stopPosition: 80;
																yourself);
														startPosition: 74;
														stopPosition: 80;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1~tif(isNull(liq_dtc),0,1)"';
																				startPosition: 82;
																				stopPosition: 109;
																				yourself);
																		startPosition: 82;
																		stopPosition: 109;
																		yourself);
																expressionAction: nil;
																startPosition: 82;
																stopPosition: 109;
																yourself);
														startPosition: 81;
														stopPosition: 109;
														yourself);
												startPosition: 74;
												stopPosition: 109;
												yourself);
										startPosition: 74;
										stopPosition: 109;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 111;
																				stopPosition: 115;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 111;
																		stopPosition: 115;
																		yourself);
																arrayPosition: nil;
																startPosition: 111;
																stopPosition: 115;
																yourself);
														startPosition: 111;
														stopPosition: 115;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hatch';
																		startPosition: 117;
																		stopPosition: 121;
																		yourself);
																arrayInformation: nil;
																startPosition: 116;
																stopPosition: 121;
																yourself);
														expressionAction: nil;
														startPosition: 116;
														stopPosition: 121;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"6"';
																				startPosition: 123;
																				stopPosition: 125;
																				yourself);
																		startPosition: 123;
																		stopPosition: 125;
																		yourself);
																expressionAction: nil;
																startPosition: 123;
																stopPosition: 125;
																yourself);
														startPosition: 122;
														stopPosition: 125;
														yourself);
												startPosition: 111;
												stopPosition: 125;
												yourself);
										startPosition: 111;
										stopPosition: 125;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 127;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 127;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 127;
																stopPosition: 131;
																yourself);
														startPosition: 127;
														stopPosition: 131;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 133;
																		stopPosition: 137;
																		yourself);
																arrayInformation: nil;
																startPosition: 132;
																stopPosition: 137;
																yourself);
														expressionAction: nil;
														startPosition: 132;
														stopPosition: 137;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 139;
																				stopPosition: 143;
																				yourself);
																		startPosition: 139;
																		stopPosition: 143;
																		yourself);
																expressionAction: nil;
																startPosition: 139;
																stopPosition: 143;
																yourself);
														startPosition: 138;
														stopPosition: 143;
														yourself);
												startPosition: 127;
												stopPosition: 143;
												yourself);
										startPosition: 127;
										stopPosition: 143;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 145;
																				stopPosition: 147;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 145;
																		stopPosition: 147;
																		yourself);
																arrayPosition: nil;
																startPosition: 145;
																stopPosition: 147;
																yourself);
														startPosition: 145;
														stopPosition: 147;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'style';
																		startPosition: 149;
																		stopPosition: 153;
																		yourself);
																arrayInformation: nil;
																startPosition: 148;
																stopPosition: 153;
																yourself);
														expressionAction: nil;
														startPosition: 148;
														stopPosition: 153;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 155;
																				stopPosition: 157;
																				yourself);
																		startPosition: 155;
																		stopPosition: 157;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 157;
																yourself);
														startPosition: 154;
														stopPosition: 157;
														yourself);
												startPosition: 145;
												stopPosition: 157;
												yourself);
										startPosition: 145;
										stopPosition: 157;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 159;
																				stopPosition: 161;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 159;
																		stopPosition: 161;
																		yourself);
																arrayPosition: nil;
																startPosition: 159;
																stopPosition: 161;
																yourself);
														startPosition: 159;
														stopPosition: 161;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'width';
																		startPosition: 163;
																		stopPosition: 167;
																		yourself);
																arrayInformation: nil;
																startPosition: 162;
																stopPosition: 167;
																yourself);
														expressionAction: nil;
														startPosition: 162;
														stopPosition: 167;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"5"';
																				startPosition: 169;
																				stopPosition: 171;
																				yourself);
																		startPosition: 169;
																		stopPosition: 171;
																		yourself);
																expressionAction: nil;
																startPosition: 169;
																stopPosition: 171;
																yourself);
														startPosition: 168;
														stopPosition: 171;
														yourself);
												startPosition: 159;
												stopPosition: 171;
												yourself);
										startPosition: 159;
										stopPosition: 171;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 173;
																				stopPosition: 175;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 173;
																		stopPosition: 175;
																		yourself);
																arrayPosition: nil;
																startPosition: 173;
																stopPosition: 175;
																yourself);
														startPosition: 173;
														stopPosition: 175;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 177;
																		stopPosition: 181;
																		yourself);
																arrayInformation: nil;
																startPosition: 176;
																stopPosition: 181;
																yourself);
														expressionAction: nil;
														startPosition: 176;
														stopPosition: 181;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 183;
																				stopPosition: 187;
																				yourself);
																		startPosition: 183;
																		stopPosition: 187;
																		yourself);
																expressionAction: nil;
																startPosition: 183;
																stopPosition: 187;
																yourself);
														startPosition: 182;
														stopPosition: 187;
														yourself);
												startPosition: 173;
												stopPosition: 187;
												yourself);
										startPosition: 173;
										stopPosition: 187;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 190;
																				stopPosition: 199;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 190;
																		stopPosition: 199;
																		yourself);
																arrayPosition: nil;
																startPosition: 190;
																stopPosition: 199;
																yourself);
														startPosition: 190;
														stopPosition: 199;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'mode';
																		startPosition: 201;
																		stopPosition: 204;
																		yourself);
																arrayInformation: nil;
																startPosition: 200;
																stopPosition: 204;
																yourself);
														expressionAction: nil;
														startPosition: 200;
														stopPosition: 204;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2"';
																				startPosition: 206;
																				stopPosition: 208;
																				yourself);
																		startPosition: 206;
																		stopPosition: 208;
																		yourself);
																expressionAction: nil;
																startPosition: 206;
																stopPosition: 208;
																yourself);
														startPosition: 205;
														stopPosition: 208;
														yourself);
												startPosition: 190;
												stopPosition: 208;
												yourself);
										startPosition: 190;
										stopPosition: 208;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 210;
																				stopPosition: 219;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 210;
																		stopPosition: 219;
																		yourself);
																arrayPosition: nil;
																startPosition: 210;
																stopPosition: 219;
																yourself);
														startPosition: 210;
														stopPosition: 219;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 221;
																		stopPosition: 225;
																		yourself);
																arrayInformation: nil;
																startPosition: 220;
																stopPosition: 225;
																yourself);
														expressionAction: nil;
														startPosition: 220;
														stopPosition: 225;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 227;
																				stopPosition: 229;
																				yourself);
																		startPosition: 227;
																		stopPosition: 229;
																		yourself);
																expressionAction: nil;
																startPosition: 227;
																stopPosition: 229;
																yourself);
														startPosition: 226;
														stopPosition: 229;
														yourself);
												startPosition: 210;
												stopPosition: 229;
												yourself);
										startPosition: 210;
										stopPosition: 229;
										yourself)};
								startPosition: 9;
								stopPosition: 229;
								yourself);
						startPosition: 8;
						stopPosition: 231;
						yourself);
				startPosition: 1;
				stopPosition: 231;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent7 [
	<generated>
	self
		assert:
			(self
				parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'detail';
						startPosition: 1;
						stopPosition: 6;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 8;
																				stopPosition: 13;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 8;
																		stopPosition: 13;
																		yourself);
																arrayPosition: nil;
																startPosition: 8;
																stopPosition: 13;
																yourself);
														startPosition: 8;
														stopPosition: 13;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTNumber new
																				number: '92';
																				startPosition: 15;
																				stopPosition: 16;
																				yourself);
																		startPosition: 15;
																		stopPosition: 16;
																		yourself);
																expressionAction: nil;
																startPosition: 15;
																stopPosition: 16;
																yourself);
														startPosition: 14;
														stopPosition: 16;
														yourself);
												startPosition: 8;
												stopPosition: 16;
												yourself);
										startPosition: 8;
										stopPosition: 16;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'color';
																				startPosition: 18;
																				stopPosition: 22;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 18;
																		stopPosition: 22;
																		yourself);
																arrayPosition: nil;
																startPosition: 18;
																stopPosition: 22;
																yourself);
														startPosition: 18;
														stopPosition: 22;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"536870912"';
																				startPosition: 24;
																				stopPosition: 34;
																				yourself);
																		startPosition: 24;
																		stopPosition: 34;
																		yourself);
																expressionAction: nil;
																startPosition: 24;
																stopPosition: 34;
																yourself);
														startPosition: 23;
														stopPosition: 34;
														yourself);
												startPosition: 18;
												stopPosition: 34;
												yourself);
										startPosition: 18;
										stopPosition: 34;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'transparency';
																				startPosition: 36;
																				stopPosition: 47;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 36;
																		stopPosition: 47;
																		yourself);
																arrayPosition: nil;
																startPosition: 36;
																stopPosition: 47;
																yourself);
														startPosition: 36;
														stopPosition: 47;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 49;
																				stopPosition: 51;
																				yourself);
																		startPosition: 49;
																		stopPosition: 51;
																		yourself);
																expressionAction: nil;
																startPosition: 49;
																stopPosition: 51;
																yourself);
														startPosition: 48;
														stopPosition: 51;
														yourself);
												startPosition: 36;
												stopPosition: 51;
												yourself);
										startPosition: 36;
										stopPosition: 51;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 53;
																				stopPosition: 60;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 53;
																		stopPosition: 60;
																		yourself);
																arrayPosition: nil;
																startPosition: 53;
																stopPosition: 60;
																yourself);
														startPosition: 53;
														stopPosition: 60;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 62;
																		stopPosition: 66;
																		yourself);
																arrayInformation: nil;
																startPosition: 61;
																stopPosition: 66;
																yourself);
														expressionAction: nil;
														startPosition: 61;
														stopPosition: 66;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"8421504"';
																				startPosition: 68;
																				stopPosition: 76;
																				yourself);
																		startPosition: 68;
																		stopPosition: 76;
																		yourself);
																expressionAction: nil;
																startPosition: 68;
																stopPosition: 76;
																yourself);
														startPosition: 67;
														stopPosition: 76;
														yourself);
												startPosition: 53;
												stopPosition: 76;
												yourself);
										startPosition: 53;
										stopPosition: 76;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 78;
																				stopPosition: 85;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 78;
																		stopPosition: 85;
																		yourself);
																arrayPosition: nil;
																startPosition: 78;
																stopPosition: 85;
																yourself);
														startPosition: 78;
														stopPosition: 85;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'transparency';
																		startPosition: 87;
																		stopPosition: 98;
																		yourself);
																arrayInformation: nil;
																startPosition: 86;
																stopPosition: 98;
																yourself);
														expressionAction: nil;
														startPosition: 86;
														stopPosition: 98;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 100;
																				stopPosition: 102;
																				yourself);
																		startPosition: 100;
																		stopPosition: 102;
																		yourself);
																expressionAction: nil;
																startPosition: 100;
																stopPosition: 102;
																yourself);
														startPosition: 99;
														stopPosition: 102;
														yourself);
												startPosition: 78;
												stopPosition: 102;
												yourself);
										startPosition: 78;
										stopPosition: 102;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 104;
																				stopPosition: 111;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 104;
																		stopPosition: 111;
																		yourself);
																arrayPosition: nil;
																startPosition: 104;
																stopPosition: 111;
																yourself);
														startPosition: 104;
														stopPosition: 111;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'angle';
																		startPosition: 113;
																		stopPosition: 117;
																		yourself);
																arrayInformation: nil;
																startPosition: 112;
																stopPosition: 117;
																yourself);
														expressionAction: nil;
														startPosition: 112;
														stopPosition: 117;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 119;
																				stopPosition: 121;
																				yourself);
																		startPosition: 119;
																		stopPosition: 121;
																		yourself);
																expressionAction: nil;
																startPosition: 119;
																stopPosition: 121;
																yourself);
														startPosition: 118;
														stopPosition: 121;
														yourself);
												startPosition: 104;
												stopPosition: 121;
												yourself);
										startPosition: 104;
										stopPosition: 121;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brushmode';
																				startPosition: 123;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 123;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 123;
																stopPosition: 131;
																yourself);
														startPosition: 123;
														stopPosition: 131;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 133;
																				stopPosition: 135;
																				yourself);
																		startPosition: 133;
																		stopPosition: 135;
																		yourself);
																expressionAction: nil;
																startPosition: 133;
																stopPosition: 135;
																yourself);
														startPosition: 132;
														stopPosition: 135;
														yourself);
												startPosition: 123;
												stopPosition: 135;
												yourself);
										startPosition: 123;
										stopPosition: 135;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 137;
																				stopPosition: 144;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 137;
																		stopPosition: 144;
																		yourself);
																arrayPosition: nil;
																startPosition: 137;
																stopPosition: 144;
																yourself);
														startPosition: 137;
														stopPosition: 144;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 146;
																		stopPosition: 155;
																		yourself);
																arrayInformation: nil;
																startPosition: 145;
																stopPosition: 155;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'mode';
																				startPosition: 157;
																				stopPosition: 160;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 156;
																		stopPosition: 160;
																		yourself);
																expressionAction: nil;
																startPosition: 156;
																stopPosition: 160;
																yourself);
														startPosition: 145;
														stopPosition: 160;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 162;
																				stopPosition: 164;
																				yourself);
																		startPosition: 162;
																		stopPosition: 164;
																		yourself);
																expressionAction: nil;
																startPosition: 162;
																stopPosition: 164;
																yourself);
														startPosition: 161;
														stopPosition: 164;
														yourself);
												startPosition: 137;
												stopPosition: 164;
												yourself);
										startPosition: 137;
										stopPosition: 164;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 166;
																				stopPosition: 173;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 166;
																		stopPosition: 173;
																		yourself);
																arrayPosition: nil;
																startPosition: 166;
																stopPosition: 173;
																yourself);
														startPosition: 166;
														stopPosition: 173;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 175;
																		stopPosition: 184;
																		yourself);
																arrayInformation: nil;
																startPosition: 174;
																stopPosition: 184;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'count';
																				startPosition: 186;
																				stopPosition: 190;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 185;
																		stopPosition: 190;
																		yourself);
																expressionAction: nil;
																startPosition: 185;
																stopPosition: 190;
																yourself);
														startPosition: 174;
														stopPosition: 190;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 192;
																				stopPosition: 194;
																				yourself);
																		startPosition: 192;
																		stopPosition: 194;
																		yourself);
																expressionAction: nil;
																startPosition: 192;
																stopPosition: 194;
																yourself);
														startPosition: 191;
														stopPosition: 194;
														yourself);
												startPosition: 166;
												stopPosition: 194;
												yourself);
										startPosition: 166;
										stopPosition: 194;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 196;
																				stopPosition: 203;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 196;
																		stopPosition: 203;
																		yourself);
																arrayPosition: nil;
																startPosition: 196;
																stopPosition: 203;
																yourself);
														startPosition: 196;
														stopPosition: 203;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'repetition';
																		startPosition: 205;
																		stopPosition: 214;
																		yourself);
																arrayInformation: nil;
																startPosition: 204;
																stopPosition: 214;
																yourself);
														expressionAction:
															(PWBASTExpressionAction new
																action:
																	(PWBASTAttributeAccess new
																		uncheckedIdentifier:
																			(PWBASTUncheckedIdentifier new
																				uncheckedIdentifier: 'length';
																				startPosition: 216;
																				stopPosition: 221;
																				yourself);
																		arrayInformation: nil;
																		startPosition: 215;
																		stopPosition: 221;
																		yourself);
																expressionAction: nil;
																startPosition: 215;
																stopPosition: 221;
																yourself);
														startPosition: 204;
														stopPosition: 221;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 223;
																				stopPosition: 227;
																				yourself);
																		startPosition: 223;
																		stopPosition: 227;
																		yourself);
																expressionAction: nil;
																startPosition: 223;
																stopPosition: 227;
																yourself);
														startPosition: 222;
														stopPosition: 227;
														yourself);
												startPosition: 196;
												stopPosition: 227;
												yourself);
										startPosition: 196;
										stopPosition: 227;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 229;
																				stopPosition: 236;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 229;
																		stopPosition: 236;
																		yourself);
																arrayPosition: nil;
																startPosition: 229;
																stopPosition: 236;
																yourself);
														startPosition: 229;
														stopPosition: 236;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'focus';
																		startPosition: 238;
																		stopPosition: 242;
																		yourself);
																arrayInformation: nil;
																startPosition: 237;
																stopPosition: 242;
																yourself);
														expressionAction: nil;
														startPosition: 237;
														stopPosition: 242;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 244;
																				stopPosition: 246;
																				yourself);
																		startPosition: 244;
																		stopPosition: 246;
																		yourself);
																expressionAction: nil;
																startPosition: 244;
																stopPosition: 246;
																yourself);
														startPosition: 243;
														stopPosition: 246;
														yourself);
												startPosition: 229;
												stopPosition: 246;
												yourself);
										startPosition: 229;
										stopPosition: 246;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 248;
																				stopPosition: 255;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 248;
																		stopPosition: 255;
																		yourself);
																arrayPosition: nil;
																startPosition: 248;
																stopPosition: 255;
																yourself);
														startPosition: 248;
														stopPosition: 255;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'scale';
																		startPosition: 257;
																		stopPosition: 261;
																		yourself);
																arrayInformation: nil;
																startPosition: 256;
																stopPosition: 261;
																yourself);
														expressionAction: nil;
														startPosition: 256;
														stopPosition: 261;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 263;
																				stopPosition: 267;
																				yourself);
																		startPosition: 263;
																		stopPosition: 267;
																		yourself);
																expressionAction: nil;
																startPosition: 263;
																stopPosition: 267;
																yourself);
														startPosition: 262;
														stopPosition: 267;
														yourself);
												startPosition: 248;
												stopPosition: 267;
												yourself);
										startPosition: 248;
										stopPosition: 267;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'gradient';
																				startPosition: 269;
																				stopPosition: 276;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 269;
																		stopPosition: 276;
																		yourself);
																arrayPosition: nil;
																startPosition: 269;
																stopPosition: 276;
																yourself);
														startPosition: 269;
														stopPosition: 276;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'spread';
																		startPosition: 278;
																		stopPosition: 283;
																		yourself);
																arrayInformation: nil;
																startPosition: 277;
																stopPosition: 283;
																yourself);
														expressionAction: nil;
														startPosition: 277;
														stopPosition: 283;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"100"';
																				startPosition: 285;
																				stopPosition: 289;
																				yourself);
																		startPosition: 285;
																		stopPosition: 289;
																		yourself);
																expressionAction: nil;
																startPosition: 285;
																stopPosition: 289;
																yourself);
														startPosition: 284;
														stopPosition: 289;
														yourself);
												startPosition: 269;
												stopPosition: 289;
												yourself);
										startPosition: 269;
										stopPosition: 289;
										yourself)};
								startPosition: 8;
								stopPosition: 289;
								yourself);
						startPosition: 7;
						stopPosition: 291;
						yourself);
				startPosition: 1;
				stopPosition: 291;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent8 [
	<generated>
	self
		assert: (self parse: 'htmltable(border="1" )' rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'htmltable';
						startPosition: 1;
						stopPosition: 9;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'border';
																				startPosition: 11;
																				stopPosition: 16;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 11;
																		stopPosition: 16;
																		yourself);
																arrayPosition: nil;
																startPosition: 11;
																stopPosition: 16;
																yourself);
														startPosition: 11;
														stopPosition: 16;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1"';
																				startPosition: 18;
																				stopPosition: 20;
																				yourself);
																		startPosition: 18;
																		stopPosition: 20;
																		yourself);
																expressionAction: nil;
																startPosition: 18;
																stopPosition: 20;
																yourself);
														startPosition: 17;
														stopPosition: 20;
														yourself);
												startPosition: 11;
												stopPosition: 20;
												yourself);
										startPosition: 11;
										stopPosition: 20;
										yourself)};
								startPosition: 11;
								stopPosition: 20;
								yourself);
						startPosition: 10;
						stopPosition: 22;
						yourself);
				startPosition: 1;
				stopPosition: 22;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testGraphicComponent9 [
	<generated>
	self
		assert:
			(self
				parse: 'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
				rule: #graphicComponent)
		equals:
			(PWBASTGraphicComponent new
				graphicComponentToken:
					(PWBASTGraphicComponentToken new
						graphicComponentToken: 'ellipse';
						startPosition: 1;
						stopPosition: 7;
						yourself);
				parameters:
					(PWBASTParameters new
						options:
							(PWBASTOptions new
								options:
									{(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'band';
																				startPosition: 9;
																				stopPosition: 12;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 9;
																		stopPosition: 12;
																		yourself);
																arrayPosition: nil;
																startPosition: 9;
																stopPosition: 12;
																yourself);
														startPosition: 9;
														stopPosition: 12;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTAccessOrType new
																				accessOrType:
																					(PWBASTAccess new
																						accessed:
																							(PWBASTVariable new
																								identifier:
																									(PWBASTIdentifier new
																										identifier: 'detail';
																										startPosition: 14;
																										stopPosition: 19;
																										yourself);
																								arrayDefinition: nil;
																								startPosition: 14;
																								stopPosition: 19;
																								yourself);
																						arrayPosition: nil;
																						startPosition: 14;
																						stopPosition: 19;
																						yourself);
																				startPosition: 14;
																				stopPosition: 19;
																				yourself);
																		startPosition: 14;
																		stopPosition: 19;
																		yourself);
																expressionAction: nil;
																startPosition: 14;
																stopPosition: 19;
																yourself);
														startPosition: 13;
														stopPosition: 19;
														yourself);
												startPosition: 9;
												stopPosition: 19;
												yourself);
										startPosition: 9;
										stopPosition: 19;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'x';
																				startPosition: 21;
																				stopPosition: 21;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 21;
																		stopPosition: 21;
																		yourself);
																arrayPosition: nil;
																startPosition: 21;
																stopPosition: 21;
																yourself);
														startPosition: 21;
														stopPosition: 21;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2350"';
																				startPosition: 23;
																				stopPosition: 28;
																				yourself);
																		startPosition: 23;
																		stopPosition: 28;
																		yourself);
																expressionAction: nil;
																startPosition: 23;
																stopPosition: 28;
																yourself);
														startPosition: 22;
														stopPosition: 28;
														yourself);
												startPosition: 21;
												stopPosition: 28;
												yourself);
										startPosition: 21;
										stopPosition: 28;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'y';
																				startPosition: 30;
																				stopPosition: 30;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 30;
																		stopPosition: 30;
																		yourself);
																arrayPosition: nil;
																startPosition: 30;
																stopPosition: 30;
																yourself);
														startPosition: 30;
														stopPosition: 30;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"32"';
																				startPosition: 32;
																				stopPosition: 35;
																				yourself);
																		startPosition: 32;
																		stopPosition: 35;
																		yourself);
																expressionAction: nil;
																startPosition: 32;
																stopPosition: 35;
																yourself);
														startPosition: 31;
														stopPosition: 35;
														yourself);
												startPosition: 30;
												stopPosition: 35;
												yourself);
										startPosition: 30;
										stopPosition: 35;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'height';
																				startPosition: 37;
																				stopPosition: 42;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 37;
																		stopPosition: 42;
																		yourself);
																arrayPosition: nil;
																startPosition: 37;
																stopPosition: 42;
																yourself);
														startPosition: 37;
														stopPosition: 42;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"36"';
																				startPosition: 44;
																				stopPosition: 47;
																				yourself);
																		startPosition: 44;
																		stopPosition: 47;
																		yourself);
																expressionAction: nil;
																startPosition: 44;
																stopPosition: 47;
																yourself);
														startPosition: 43;
														stopPosition: 47;
														yourself);
												startPosition: 37;
												stopPosition: 47;
												yourself);
										startPosition: 37;
										stopPosition: 47;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'width';
																				startPosition: 49;
																				stopPosition: 53;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 49;
																		stopPosition: 53;
																		yourself);
																arrayPosition: nil;
																startPosition: 49;
																stopPosition: 53;
																yourself);
														startPosition: 49;
														stopPosition: 53;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"41"';
																				startPosition: 55;
																				stopPosition: 58;
																				yourself);
																		startPosition: 55;
																		stopPosition: 58;
																		yourself);
																expressionAction: nil;
																startPosition: 55;
																stopPosition: 58;
																yourself);
														startPosition: 54;
														stopPosition: 58;
														yourself);
												startPosition: 49;
												stopPosition: 58;
												yourself);
										startPosition: 49;
										stopPosition: 58;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTColumnNameOption new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTExpressionTerm new
																expressionTerm:
																	(PWBASTAccessOrType new
																		accessOrType:
																			(PWBASTAccess new
																				accessed:
																					(PWBASTVariable new
																						identifier:
																							(PWBASTIdentifier new
																								identifier: 'tem_dtc';
																								startPosition: 66;
																								stopPosition: 72;
																								yourself);
																						arrayDefinition: nil;
																						startPosition: 66;
																						stopPosition: 72;
																						yourself);
																				arrayPosition: nil;
																				startPosition: 66;
																				stopPosition: 72;
																				yourself);
																		startPosition: 66;
																		stopPosition: 72;
																		yourself);
																startPosition: 66;
																stopPosition: 72;
																yourself);
														expressionAction: nil;
														startPosition: 66;
														stopPosition: 72;
														yourself);
												startPosition: 61;
												stopPosition: 72;
												yourself);
										startPosition: 61;
										stopPosition: 72;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'visible';
																				startPosition: 74;
																				stopPosition: 80;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 74;
																		stopPosition: 80;
																		yourself);
																arrayPosition: nil;
																startPosition: 74;
																stopPosition: 80;
																yourself);
														startPosition: 74;
														stopPosition: 80;
														yourself);
												expressionAction: nil;
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"1~tif(isNull(liq_dtc),0,1)"';
																				startPosition: 82;
																				stopPosition: 109;
																				yourself);
																		startPosition: 82;
																		stopPosition: 109;
																		yourself);
																expressionAction: nil;
																startPosition: 82;
																stopPosition: 109;
																yourself);
														startPosition: 81;
														stopPosition: 109;
														yourself);
												startPosition: 74;
												stopPosition: 109;
												yourself);
										startPosition: 74;
										stopPosition: 109;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 111;
																				stopPosition: 115;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 111;
																		stopPosition: 115;
																		yourself);
																arrayPosition: nil;
																startPosition: 111;
																stopPosition: 115;
																yourself);
														startPosition: 111;
														stopPosition: 115;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'hatch';
																		startPosition: 117;
																		stopPosition: 121;
																		yourself);
																arrayInformation: nil;
																startPosition: 116;
																stopPosition: 121;
																yourself);
														expressionAction: nil;
														startPosition: 116;
														stopPosition: 121;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"6"';
																				startPosition: 123;
																				stopPosition: 125;
																				yourself);
																		startPosition: 123;
																		stopPosition: 125;
																		yourself);
																expressionAction: nil;
																startPosition: 123;
																stopPosition: 125;
																yourself);
														startPosition: 122;
														stopPosition: 125;
														yourself);
												startPosition: 111;
												stopPosition: 125;
												yourself);
										startPosition: 111;
										stopPosition: 125;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'brush';
																				startPosition: 127;
																				stopPosition: 131;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 127;
																		stopPosition: 131;
																		yourself);
																arrayPosition: nil;
																startPosition: 127;
																stopPosition: 131;
																yourself);
														startPosition: 127;
														stopPosition: 131;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 133;
																		stopPosition: 137;
																		yourself);
																arrayInformation: nil;
																startPosition: 132;
																stopPosition: 137;
																yourself);
														expressionAction: nil;
														startPosition: 132;
														stopPosition: 137;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 139;
																				stopPosition: 143;
																				yourself);
																		startPosition: 139;
																		stopPosition: 143;
																		yourself);
																expressionAction: nil;
																startPosition: 139;
																stopPosition: 143;
																yourself);
														startPosition: 138;
														stopPosition: 143;
														yourself);
												startPosition: 127;
												stopPosition: 143;
												yourself);
										startPosition: 127;
										stopPosition: 143;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 145;
																				stopPosition: 147;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 145;
																		stopPosition: 147;
																		yourself);
																arrayPosition: nil;
																startPosition: 145;
																stopPosition: 147;
																yourself);
														startPosition: 145;
														stopPosition: 147;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'style';
																		startPosition: 149;
																		stopPosition: 153;
																		yourself);
																arrayInformation: nil;
																startPosition: 148;
																stopPosition: 153;
																yourself);
														expressionAction: nil;
														startPosition: 148;
														stopPosition: 153;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 155;
																				stopPosition: 157;
																				yourself);
																		startPosition: 155;
																		stopPosition: 157;
																		yourself);
																expressionAction: nil;
																startPosition: 155;
																stopPosition: 157;
																yourself);
														startPosition: 154;
														stopPosition: 157;
														yourself);
												startPosition: 145;
												stopPosition: 157;
												yourself);
										startPosition: 145;
										stopPosition: 157;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 159;
																				stopPosition: 161;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 159;
																		stopPosition: 161;
																		yourself);
																arrayPosition: nil;
																startPosition: 159;
																stopPosition: 161;
																yourself);
														startPosition: 159;
														stopPosition: 161;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'width';
																		startPosition: 163;
																		stopPosition: 167;
																		yourself);
																arrayInformation: nil;
																startPosition: 162;
																stopPosition: 167;
																yourself);
														expressionAction: nil;
														startPosition: 162;
														stopPosition: 167;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"5"';
																				startPosition: 169;
																				stopPosition: 171;
																				yourself);
																		startPosition: 169;
																		stopPosition: 171;
																		yourself);
																expressionAction: nil;
																startPosition: 169;
																stopPosition: 171;
																yourself);
														startPosition: 168;
														stopPosition: 171;
														yourself);
												startPosition: 159;
												stopPosition: 171;
												yourself);
										startPosition: 159;
										stopPosition: 171;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'pen';
																				startPosition: 173;
																				stopPosition: 175;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 173;
																		stopPosition: 175;
																		yourself);
																arrayPosition: nil;
																startPosition: 173;
																stopPosition: 175;
																yourself);
														startPosition: 173;
														stopPosition: 175;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 177;
																		stopPosition: 181;
																		yourself);
																arrayInformation: nil;
																startPosition: 176;
																stopPosition: 181;
																yourself);
														expressionAction: nil;
														startPosition: 176;
														stopPosition: 181;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"255"';
																				startPosition: 183;
																				stopPosition: 187;
																				yourself);
																		startPosition: 183;
																		stopPosition: 187;
																		yourself);
																expressionAction: nil;
																startPosition: 183;
																stopPosition: 187;
																yourself);
														startPosition: 182;
														stopPosition: 187;
														yourself);
												startPosition: 173;
												stopPosition: 187;
												yourself);
										startPosition: 173;
										stopPosition: 187;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 190;
																				stopPosition: 199;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 190;
																		stopPosition: 199;
																		yourself);
																arrayPosition: nil;
																startPosition: 190;
																stopPosition: 199;
																yourself);
														startPosition: 190;
														stopPosition: 199;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'mode';
																		startPosition: 201;
																		stopPosition: 204;
																		yourself);
																arrayInformation: nil;
																startPosition: 200;
																stopPosition: 204;
																yourself);
														expressionAction: nil;
														startPosition: 200;
														stopPosition: 204;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"2"';
																				startPosition: 206;
																				stopPosition: 208;
																				yourself);
																		startPosition: 206;
																		stopPosition: 208;
																		yourself);
																expressionAction: nil;
																startPosition: 206;
																stopPosition: 208;
																yourself);
														startPosition: 205;
														stopPosition: 208;
														yourself);
												startPosition: 190;
												stopPosition: 208;
												yourself);
										startPosition: 190;
										stopPosition: 208;
										yourself).
									(PWBASTOption new
										option:
											(PWBASTAssignationStatement new
												accessOrType:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'background';
																				startPosition: 210;
																				stopPosition: 219;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 210;
																		stopPosition: 219;
																		yourself);
																arrayPosition: nil;
																startPosition: 210;
																stopPosition: 219;
																yourself);
														startPosition: 210;
														stopPosition: 219;
														yourself);
												expressionAction:
													(PWBASTExpressionAction new
														action:
															(PWBASTAttributeAccess new
																uncheckedIdentifier:
																	(PWBASTUncheckedIdentifier new
																		uncheckedIdentifier: 'color';
																		startPosition: 221;
																		stopPosition: 225;
																		yourself);
																arrayInformation: nil;
																startPosition: 220;
																stopPosition: 225;
																yourself);
														expressionAction: nil;
														startPosition: 220;
														stopPosition: 225;
														yourself);
												assignation:
													(PWBASTAssignation new
														expression:
															(PWBASTExpression new
																expression:
																	(PWBASTExpressionTerm new
																		expressionTerm:
																			(PWBASTString new
																				string: '"0"';
																				startPosition: 227;
																				stopPosition: 229;
																				yourself);
																		startPosition: 227;
																		stopPosition: 229;
																		yourself);
																expressionAction: nil;
																startPosition: 227;
																stopPosition: 229;
																yourself);
														startPosition: 226;
														stopPosition: 229;
														yourself);
												startPosition: 210;
												stopPosition: 229;
												yourself);
										startPosition: 210;
										stopPosition: 229;
										yourself)};
								startPosition: 9;
								stopPosition: 229;
								yourself);
						startPosition: 8;
						stopPosition: 231;
						yourself);
				startPosition: 1;
				stopPosition: 231;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testImport1 [
	<generated>
	self
		assert: (self parse: 'import.xml()' rule: #import)
		equals:
			(PWBASTImport new
				formatType:
					(PWBASTFormatType new
						formatType: 'xml';
						startPosition: 8;
						stopPosition: 10;
						yourself);
				parameters:
					(PWBASTParameters new
						options: nil;
						startPosition: 11;
						stopPosition: 12;
						yourself);
				startPosition: 1;
				stopPosition: 12;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption1 [
	<generated>
	self
		assert: (self parse: 'name=dct_aoc' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTColumnNameOption new
						expression:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTAccessOrType new
												accessOrType:
													(PWBASTAccess new
														accessed:
															(PWBASTVariable new
																identifier:
																	(PWBASTIdentifier new
																		identifier: 'dct_aoc';
																		startPosition: 6;
																		stopPosition: 12;
																		yourself);
																arrayDefinition: nil;
																startPosition: 6;
																stopPosition: 12;
																yourself);
														arrayPosition: nil;
														startPosition: 6;
														stopPosition: 12;
														yourself);
												startPosition: 6;
												stopPosition: 12;
												yourself);
										startPosition: 6;
										stopPosition: 12;
										yourself);
								expressionAction: nil;
								startPosition: 6;
								stopPosition: 12;
								yourself);
						startPosition: 1;
						stopPosition: 12;
						yourself);
				startPosition: 1;
				stopPosition: 12;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption10 [
	<generated>
	self
		assert:
			(self
				parse: 'nest_arguments=((" al_org_no "),(" al_cev_deb "),(" al_cev_fin "))'
				rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'nest_arguments';
														startPosition: 1;
														stopPosition: 14;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 14;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 14;
										yourself);
								startPosition: 1;
								stopPosition: 14;
								yourself);
						expressionAction: nil;
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTParenthesedArray new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTParenthesedExpression new
																expression:
																	(PWBASTExpression new
																		expression:
																			(PWBASTExpressionTerm new
																				expressionTerm:
																					(PWBASTString new
																						string: '" al_org_no "';
																						startPosition: 18;
																						stopPosition: 30;
																						yourself);
																				startPosition: 18;
																				stopPosition: 30;
																				yourself);
																		expressionAction: nil;
																		startPosition: 18;
																		stopPosition: 30;
																		yourself);
																startPosition: 17;
																stopPosition: 31;
																yourself);
														expressionAction: nil;
														startPosition: 17;
														stopPosition: 31;
														yourself);
												expressions:
													(OrderedCollection
														withAll:
															{(PWBASTExpression new
																expression:
																	(PWBASTParenthesedExpression new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '" al_cev_deb "';
																								startPosition: 34;
																								stopPosition: 47;
																								yourself);
																						startPosition: 34;
																						stopPosition: 47;
																						yourself);
																				expressionAction: nil;
																				startPosition: 34;
																				stopPosition: 47;
																				yourself);
																		startPosition: 33;
																		stopPosition: 48;
																		yourself);
																expressionAction: nil;
																startPosition: 33;
																stopPosition: 48;
																yourself).
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedExpression new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '" al_cev_fin "';
																								startPosition: 51;
																								stopPosition: 64;
																								yourself);
																						startPosition: 51;
																						stopPosition: 64;
																						yourself);
																				expressionAction: nil;
																				startPosition: 51;
																				stopPosition: 64;
																				yourself);
																		startPosition: 50;
																		stopPosition: 65;
																		yourself);
																expressionAction: nil;
																startPosition: 50;
																stopPosition: 65;
																yourself)});
												startPosition: 16;
												stopPosition: 66;
												yourself);
										expressionAction: nil;
										startPosition: 16;
										stopPosition: 66;
										yourself);
								startPosition: 15;
								stopPosition: 66;
								yourself);
						startPosition: 1;
						stopPosition: 66;
						yourself);
				startPosition: 1;
				stopPosition: 66;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption11 [
	<generated>
	self
		assert: (self parse: 'name=date_naissance_t' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTColumnNameOption new
						expression:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTAccessOrType new
												accessOrType:
													(PWBASTAccess new
														accessed:
															(PWBASTVariable new
																identifier:
																	(PWBASTIdentifier new
																		identifier: 'date_naissance_t';
																		startPosition: 6;
																		stopPosition: 21;
																		yourself);
																arrayDefinition: nil;
																startPosition: 6;
																stopPosition: 21;
																yourself);
														arrayPosition: nil;
														startPosition: 6;
														stopPosition: 21;
														yourself);
												startPosition: 6;
												stopPosition: 21;
												yourself);
										startPosition: 6;
										stopPosition: 21;
										yourself);
								expressionAction: nil;
								startPosition: 6;
								stopPosition: 21;
								yourself);
						startPosition: 1;
						stopPosition: 21;
						yourself);
				startPosition: 1;
				stopPosition: 21;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption2 [
	<generated>
	self
		assert: (self parse: 'type=char(24)' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTColumnTypeOption new
						expression:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTFunctionInvocation new
												defaultVariable: nil;
												functionName:
													(PWBASTUncheckedIdentifier new
														uncheckedIdentifier: 'char';
														startPosition: 6;
														stopPosition: 9;
														yourself);
												functionArguments:
													(PWBASTFunctionArguments new
														functionArguments:
															{(PWBASTFunctionArgument new
																argumentOption: nil;
																expression:
																	(PWBASTExpression new
																		expression:
																			(PWBASTExpressionTerm new
																				expressionTerm:
																					(PWBASTNumber new
																						number: '24';
																						startPosition: 11;
																						stopPosition: 12;
																						yourself);
																				startPosition: 11;
																				stopPosition: 12;
																				yourself);
																		expressionAction: nil;
																		startPosition: 11;
																		stopPosition: 12;
																		yourself);
																startPosition: 11;
																stopPosition: 12;
																yourself)};
														startPosition: 10;
														stopPosition: 13;
														yourself);
												startPosition: 6;
												stopPosition: 13;
												yourself);
										startPosition: 6;
										stopPosition: 13;
										yourself);
								expressionAction: nil;
								startPosition: 6;
								stopPosition: 13;
								yourself);
						startPosition: 1;
						stopPosition: 13;
						yourself);
				startPosition: 1;
				stopPosition: 13;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption3 [
	<generated>
	self
		assert: (self parse: 'color="536870912"' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'color';
														startPosition: 1;
														stopPosition: 5;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 5;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 5;
										yourself);
								startPosition: 1;
								stopPosition: 5;
								yourself);
						expressionAction: nil;
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTString new
														string: '"536870912"';
														startPosition: 7;
														stopPosition: 17;
														yourself);
												startPosition: 7;
												stopPosition: 17;
												yourself);
										expressionAction: nil;
										startPosition: 7;
										stopPosition: 17;
										yourself);
								startPosition: 6;
								stopPosition: 17;
								yourself);
						startPosition: 1;
						stopPosition: 17;
						yourself);
				startPosition: 1;
				stopPosition: 17;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption4 [
	<generated>
	self
		assert: (self parse: 'edit.limit=0' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'edit';
														startPosition: 1;
														stopPosition: 4;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 4;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 4;
										yourself);
								startPosition: 1;
								stopPosition: 4;
								yourself);
						expressionAction:
							(PWBASTExpressionAction new
								action:
									(PWBASTAttributeAccess new
										uncheckedIdentifier:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'limit';
												startPosition: 6;
												stopPosition: 10;
												yourself);
										arrayInformation: nil;
										startPosition: 5;
										stopPosition: 10;
										yourself);
								expressionAction: nil;
								startPosition: 5;
								stopPosition: 10;
								yourself);
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTNumber new
														number: '0';
														startPosition: 12;
														stopPosition: 12;
														yourself);
												startPosition: 12;
												stopPosition: 12;
												yourself);
										expressionAction: nil;
										startPosition: 12;
										stopPosition: 12;
										yourself);
								startPosition: 11;
								stopPosition: 12;
								yourself);
						startPosition: 1;
						stopPosition: 12;
						yourself);
				startPosition: 1;
				stopPosition: 12;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption5 [
	<generated>
	self
		assert: (self parse: 'name=compute_1' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTColumnNameOption new
						expression:
							(PWBASTExpression new
								expression:
									(PWBASTExpressionTerm new
										expressionTerm:
											(PWBASTAccessOrType new
												accessOrType:
													(PWBASTAccess new
														accessed:
															(PWBASTVariable new
																identifier:
																	(PWBASTIdentifier new
																		identifier: 'compute_1';
																		startPosition: 6;
																		stopPosition: 14;
																		yourself);
																arrayDefinition: nil;
																startPosition: 6;
																stopPosition: 14;
																yourself);
														arrayPosition: nil;
														startPosition: 6;
														stopPosition: 14;
														yourself);
												startPosition: 6;
												stopPosition: 14;
												yourself);
										startPosition: 6;
										stopPosition: 14;
										yourself);
								expressionAction: nil;
								startPosition: 6;
								stopPosition: 14;
								yourself);
						startPosition: 1;
						stopPosition: 14;
						yourself);
				startPosition: 1;
				stopPosition: 14;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption6 [
	<generated>
	self
		assert: (self parse: 'print.orientation = 0' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'print';
														startPosition: 1;
														stopPosition: 5;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 5;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 5;
										yourself);
								startPosition: 1;
								stopPosition: 5;
								yourself);
						expressionAction:
							(PWBASTExpressionAction new
								action:
									(PWBASTAttributeAccess new
										uncheckedIdentifier:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'orientation';
												startPosition: 7;
												stopPosition: 17;
												yourself);
										arrayInformation: nil;
										startPosition: 6;
										stopPosition: 17;
										yourself);
								expressionAction: nil;
								startPosition: 6;
								stopPosition: 17;
								yourself);
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTNumber new
														number: '0';
														startPosition: 21;
														stopPosition: 21;
														yourself);
												startPosition: 21;
												stopPosition: 21;
												yourself);
										expressionAction: nil;
										startPosition: 21;
										stopPosition: 21;
										yourself);
								startPosition: 18;
								stopPosition: 21;
								yourself);
						startPosition: 1;
						stopPosition: 21;
						yourself);
				startPosition: 1;
				stopPosition: 21;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption7 [
	<generated>
	self
		assert: (self parse: 'height.autosize=yes' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'height';
														startPosition: 1;
														stopPosition: 6;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 6;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 6;
										yourself);
								startPosition: 1;
								stopPosition: 6;
								yourself);
						expressionAction:
							(PWBASTExpressionAction new
								action:
									(PWBASTAttributeAccess new
										uncheckedIdentifier:
											(PWBASTUncheckedIdentifier new
												uncheckedIdentifier: 'autosize';
												startPosition: 8;
												stopPosition: 15;
												yourself);
										arrayInformation: nil;
										startPosition: 7;
										stopPosition: 15;
										yourself);
								expressionAction: nil;
								startPosition: 7;
								stopPosition: 15;
								yourself);
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'yes';
																				startPosition: 17;
																				stopPosition: 19;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 17;
																		stopPosition: 19;
																		yourself);
																arrayPosition: nil;
																startPosition: 17;
																stopPosition: 19;
																yourself);
														startPosition: 17;
														stopPosition: 19;
														yourself);
												startPosition: 17;
												stopPosition: 19;
												yourself);
										expressionAction: nil;
										startPosition: 17;
										stopPosition: 19;
										yourself);
								startPosition: 16;
								stopPosition: 19;
								yourself);
						startPosition: 1;
						stopPosition: 19;
						yourself);
				startPosition: 1;
				stopPosition: 19;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption8 [
	<generated>
	self
		assert: (self parse: 'band=header.1' rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'band';
														startPosition: 1;
														stopPosition: 4;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 4;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 4;
										yourself);
								startPosition: 1;
								stopPosition: 4;
								yourself);
						expressionAction: nil;
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTAccessOrType new
														accessOrType:
															(PWBASTAccess new
																accessed:
																	(PWBASTVariable new
																		identifier:
																			(PWBASTIdentifier new
																				identifier: 'header';
																				startPosition: 6;
																				stopPosition: 11;
																				yourself);
																		arrayDefinition: nil;
																		startPosition: 6;
																		stopPosition: 11;
																		yourself);
																arrayPosition: nil;
																startPosition: 6;
																stopPosition: 11;
																yourself);
														startPosition: 6;
														stopPosition: 11;
														yourself);
												startPosition: 6;
												stopPosition: 11;
												yourself);
										expressionAction: nil;
										startPosition: 6;
										stopPosition: 11;
										yourself);
								startPosition: 5;
								stopPosition: 13;
								yourself);
						startPosition: 1;
						stopPosition: 13;
						yourself);
				startPosition: 1;
				stopPosition: 13;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOption9 [
	<generated>
	self
		assert:
			(self
				parse: 'arguments=(("al_par_no", number),("as_prt_adn", string),("al_sou_no", number),("al_annee", number),("al_gpp_no", number))'
				rule: #option)
		equals:
			(PWBASTOption new
				option:
					(PWBASTAssignationStatement new
						accessOrType:
							(PWBASTAccessOrType new
								accessOrType:
									(PWBASTAccess new
										accessed:
											(PWBASTVariable new
												identifier:
													(PWBASTIdentifier new
														identifier: 'arguments';
														startPosition: 1;
														stopPosition: 9;
														yourself);
												arrayDefinition: nil;
												startPosition: 1;
												stopPosition: 9;
												yourself);
										arrayPosition: nil;
										startPosition: 1;
										stopPosition: 9;
										yourself);
								startPosition: 1;
								stopPosition: 9;
								yourself);
						expressionAction: nil;
						assignation:
							(PWBASTAssignation new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTParenthesedArray new
												expression:
													(PWBASTExpression new
														expression:
															(PWBASTParenthesedArray new
																expression:
																	(PWBASTExpression new
																		expression:
																			(PWBASTExpressionTerm new
																				expressionTerm:
																					(PWBASTString new
																						string: '"al_par_no"';
																						startPosition: 13;
																						stopPosition: 23;
																						yourself);
																				startPosition: 13;
																				stopPosition: 23;
																				yourself);
																		expressionAction: nil;
																		startPosition: 13;
																		stopPosition: 23;
																		yourself);
																expressions:
																	(OrderedCollection
																		withAll:
																			{(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTAccessOrType new
																								accessOrType:
																									(PWBASTAccess new
																										accessed:
																											(PWBASTVariable new
																												identifier:
																													(PWBASTIdentifier new
																														identifier: 'number';
																														startPosition: 26;
																														stopPosition: 31;
																														yourself);
																												arrayDefinition: nil;
																												startPosition: 26;
																												stopPosition: 31;
																												yourself);
																										arrayPosition: nil;
																										startPosition: 26;
																										stopPosition: 31;
																										yourself);
																								startPosition: 26;
																								stopPosition: 31;
																								yourself);
																						startPosition: 26;
																						stopPosition: 31;
																						yourself);
																				expressionAction: nil;
																				startPosition: 26;
																				stopPosition: 31;
																				yourself)});
																startPosition: 12;
																stopPosition: 32;
																yourself);
														expressionAction: nil;
														startPosition: 12;
														stopPosition: 32;
														yourself);
												expressions:
													(OrderedCollection
														withAll:
															{(PWBASTExpression new
																expression:
																	(PWBASTParenthesedArray new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '"as_prt_adn"';
																								startPosition: 35;
																								stopPosition: 46;
																								yourself);
																						startPosition: 35;
																						stopPosition: 46;
																						yourself);
																				expressionAction: nil;
																				startPosition: 35;
																				stopPosition: 46;
																				yourself);
																		expressions:
																			(OrderedCollection
																				withAll:
																					{(PWBASTExpression new
																						expression:
																							(PWBASTExpressionTerm new
																								expressionTerm:
																									(PWBASTAccessOrType new
																										accessOrType:
																											(PWBASTBasicType new
																												basicType: 'string';
																												startPosition: 49;
																												stopPosition: 54;
																												yourself);
																										startPosition: 49;
																										stopPosition: 54;
																										yourself);
																								startPosition: 49;
																								stopPosition: 54;
																								yourself);
																						expressionAction: nil;
																						startPosition: 49;
																						stopPosition: 54;
																						yourself)});
																		startPosition: 34;
																		stopPosition: 55;
																		yourself);
																expressionAction: nil;
																startPosition: 34;
																stopPosition: 55;
																yourself).
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedArray new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '"al_sou_no"';
																								startPosition: 58;
																								stopPosition: 68;
																								yourself);
																						startPosition: 58;
																						stopPosition: 68;
																						yourself);
																				expressionAction: nil;
																				startPosition: 58;
																				stopPosition: 68;
																				yourself);
																		expressions:
																			(OrderedCollection
																				withAll:
																					{(PWBASTExpression new
																						expression:
																							(PWBASTExpressionTerm new
																								expressionTerm:
																									(PWBASTAccessOrType new
																										accessOrType:
																											(PWBASTAccess new
																												accessed:
																													(PWBASTVariable new
																														identifier:
																															(PWBASTIdentifier new
																																identifier: 'number';
																																startPosition: 71;
																																stopPosition: 76;
																																yourself);
																														arrayDefinition: nil;
																														startPosition: 71;
																														stopPosition: 76;
																														yourself);
																												arrayPosition: nil;
																												startPosition: 71;
																												stopPosition: 76;
																												yourself);
																										startPosition: 71;
																										stopPosition: 76;
																										yourself);
																								startPosition: 71;
																								stopPosition: 76;
																								yourself);
																						expressionAction: nil;
																						startPosition: 71;
																						stopPosition: 76;
																						yourself)});
																		startPosition: 57;
																		stopPosition: 77;
																		yourself);
																expressionAction: nil;
																startPosition: 57;
																stopPosition: 77;
																yourself).
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedArray new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '"al_annee"';
																								startPosition: 80;
																								stopPosition: 89;
																								yourself);
																						startPosition: 80;
																						stopPosition: 89;
																						yourself);
																				expressionAction: nil;
																				startPosition: 80;
																				stopPosition: 89;
																				yourself);
																		expressions:
																			(OrderedCollection
																				withAll:
																					{(PWBASTExpression new
																						expression:
																							(PWBASTExpressionTerm new
																								expressionTerm:
																									(PWBASTAccessOrType new
																										accessOrType:
																											(PWBASTAccess new
																												accessed:
																													(PWBASTVariable new
																														identifier:
																															(PWBASTIdentifier new
																																identifier: 'number';
																																startPosition: 92;
																																stopPosition: 97;
																																yourself);
																														arrayDefinition: nil;
																														startPosition: 92;
																														stopPosition: 97;
																														yourself);
																												arrayPosition: nil;
																												startPosition: 92;
																												stopPosition: 97;
																												yourself);
																										startPosition: 92;
																										stopPosition: 97;
																										yourself);
																								startPosition: 92;
																								stopPosition: 97;
																								yourself);
																						expressionAction: nil;
																						startPosition: 92;
																						stopPosition: 97;
																						yourself)});
																		startPosition: 79;
																		stopPosition: 98;
																		yourself);
																expressionAction: nil;
																startPosition: 79;
																stopPosition: 98;
																yourself).
															(PWBASTExpression new
																expression:
																	(PWBASTParenthesedArray new
																		expression:
																			(PWBASTExpression new
																				expression:
																					(PWBASTExpressionTerm new
																						expressionTerm:
																							(PWBASTString new
																								string: '"al_gpp_no"';
																								startPosition: 101;
																								stopPosition: 111;
																								yourself);
																						startPosition: 101;
																						stopPosition: 111;
																						yourself);
																				expressionAction: nil;
																				startPosition: 101;
																				stopPosition: 111;
																				yourself);
																		expressions:
																			(OrderedCollection
																				withAll:
																					{(PWBASTExpression new
																						expression:
																							(PWBASTExpressionTerm new
																								expressionTerm:
																									(PWBASTAccessOrType new
																										accessOrType:
																											(PWBASTAccess new
																												accessed:
																													(PWBASTVariable new
																														identifier:
																															(PWBASTIdentifier new
																																identifier: 'number';
																																startPosition: 114;
																																stopPosition: 119;
																																yourself);
																														arrayDefinition: nil;
																														startPosition: 114;
																														stopPosition: 119;
																														yourself);
																												arrayPosition: nil;
																												startPosition: 114;
																												stopPosition: 119;
																												yourself);
																										startPosition: 114;
																										stopPosition: 119;
																										yourself);
																								startPosition: 114;
																								stopPosition: 119;
																								yourself);
																						expressionAction: nil;
																						startPosition: 114;
																						stopPosition: 119;
																						yourself)});
																		startPosition: 100;
																		stopPosition: 120;
																		yourself);
																expressionAction: nil;
																startPosition: 100;
																stopPosition: 120;
																yourself)});
												startPosition: 11;
												stopPosition: 121;
												yourself);
										expressionAction: nil;
										startPosition: 11;
										stopPosition: 121;
										yourself);
								startPosition: 10;
								stopPosition: 121;
								yourself);
						startPosition: 1;
						stopPosition: 121;
						yourself);
				startPosition: 1;
				stopPosition: 121;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testOptions1 [
	<generated>
	self
		assert: (self parse: 'band=detail id=4' rule: #options)
		equals:
			(PWBASTOptions new
				options:
					{(PWBASTOption new
						option:
							(PWBASTAssignationStatement new
								accessOrType:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'band';
																startPosition: 1;
																stopPosition: 4;
																yourself);
														arrayDefinition: nil;
														startPosition: 1;
														stopPosition: 4;
														yourself);
												arrayPosition: nil;
												startPosition: 1;
												stopPosition: 4;
												yourself);
										startPosition: 1;
										stopPosition: 4;
										yourself);
								expressionAction: nil;
								assignation:
									(PWBASTAssignation new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTAccessOrType new
																accessOrType:
																	(PWBASTAccess new
																		accessed:
																			(PWBASTVariable new
																				identifier:
																					(PWBASTIdentifier new
																						identifier: 'detail';
																						startPosition: 6;
																						stopPosition: 11;
																						yourself);
																				arrayDefinition: nil;
																				startPosition: 6;
																				stopPosition: 11;
																				yourself);
																		arrayPosition: nil;
																		startPosition: 6;
																		stopPosition: 11;
																		yourself);
																startPosition: 6;
																stopPosition: 11;
																yourself);
														startPosition: 6;
														stopPosition: 11;
														yourself);
												expressionAction: nil;
												startPosition: 6;
												stopPosition: 11;
												yourself);
										startPosition: 5;
										stopPosition: 11;
										yourself);
								startPosition: 1;
								stopPosition: 11;
								yourself);
						startPosition: 1;
						stopPosition: 11;
						yourself).
					(PWBASTOption new
						option:
							(PWBASTAssignationStatement new
								accessOrType:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'id';
																startPosition: 13;
																stopPosition: 14;
																yourself);
														arrayDefinition: nil;
														startPosition: 13;
														stopPosition: 14;
														yourself);
												arrayPosition: nil;
												startPosition: 13;
												stopPosition: 14;
												yourself);
										startPosition: 13;
										stopPosition: 14;
										yourself);
								expressionAction: nil;
								assignation:
									(PWBASTAssignation new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTNumber new
																number: '4';
																startPosition: 16;
																stopPosition: 16;
																yourself);
														startPosition: 16;
														stopPosition: 16;
														yourself);
												expressionAction: nil;
												startPosition: 16;
												stopPosition: 16;
												yourself);
										startPosition: 15;
										stopPosition: 16;
										yourself);
								startPosition: 13;
								stopPosition: 16;
								yourself);
						startPosition: 13;
						stopPosition: 16;
						yourself)};
				startPosition: 1;
				stopPosition: 16;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testParametrizedType1 [
	<generated>
	self
		assert: (self parse: 'char(24)' rule: #parametrizedType)
		equals:
			(PWBASTParametrizedType new
				parametrizedType: 'char(24)';
				startPosition: 1;
				stopPosition: 8;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testParametrizedType2 [
	<generated>
	self
		assert: (self parse: 'decimal(2)' rule: #parametrizedType)
		equals:
			(PWBASTParametrizedType new
				parametrizedType: 'decimal(2)';
				startPosition: 1;
				stopPosition: 10;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString1 [
	<generated>
	self
		assert: (self parse: '''Simple string''' rule: #string)
		equals:
			(PWBASTString new
				string: '''Simple string''';
				startPosition: 1;
				stopPosition: 15;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString10 [
	<generated>
	self
		assert:
			(self
				parse: '"<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>"'
				rule: #string)
		equals:
			(PWBASTString new
				string: '"<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>"';
				startPosition: 1;
				stopPosition: 7992;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString2 [
	<generated>
	self
		assert: (self parse: '"Simple string"' rule: #string)
		equals:
			(PWBASTString new
				string: '"Simple string"';
				startPosition: 1;
				stopPosition: 15;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString3 [
	<generated>
	self
		assert: (self parse: '"String with protected ~""' rule: #string)
		equals:
			(PWBASTString new
				string: '"String with protected ~""';
				startPosition: 1;
				stopPosition: 26;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString4 [
	<generated>
	self
		assert: (self parse: '''String with protected ~''''' rule: #string)
		equals:
			(PWBASTString new
				string: '''String with protected ~''''';
				startPosition: 1;
				stopPosition: 26;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString5 [
	<generated>
	self
		assert: (self parse: '''''' rule: #string)
		equals:
			(PWBASTString new
				string: '''''';
				startPosition: 1;
				stopPosition: 2;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString6 [
	<generated>
	self
		assert: (self parse: '""' rule: #string)
		equals:
			(PWBASTString new
				string: '""';
				startPosition: 1;
				stopPosition: 2;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString7 [
	<generated>
	self
		assert:
			(self
				parse: '''Erreur de paramétrage de cre_dcs. Le chemin de création des fichiers dcs n~''est pas paramétré'''
				rule: #string)
		equals:
			(PWBASTString new
				string: '''Erreur de paramétrage de cre_dcs. Le chemin de création des fichiers dcs n~''est pas paramétré''';
				startPosition: 1;
				stopPosition: 95;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString8 [
	<generated>
	self
		assert: (self parse: '"~~~~~~~~"' rule: #string)
		equals:
			(PWBASTString new
				string: '"~~~~~~~~"';
				startPosition: 1;
				stopPosition: 10;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testString9 [
	<generated>
	self
		assert:
			(self
				parse: '"~"Notification pour le centre ~" +  as_seq_num "'
				rule: #string)
		equals:
			(PWBASTString new
				string: '"~"Notification pour le centre ~" +  as_seq_num "';
				startPosition: 1;
				stopPosition: 49;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testTemplate1 [
	<generated>
	self
		assert:
			(self
				parse: 'template=(comment="/0001/ $Nath$ 27/02/2013" encoding="ISO-8859-1" name="template_xml_ges_dv3" xml="<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>")'
				rule: #template)
		equals:
			(PWBASTTemplate new
				options:
					{(PWBASTOption new
						option:
							(PWBASTAssignationStatement new
								accessOrType:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'comment';
																startPosition: 11;
																stopPosition: 17;
																yourself);
														arrayDefinition: nil;
														startPosition: 11;
														stopPosition: 17;
														yourself);
												arrayPosition: nil;
												startPosition: 11;
												stopPosition: 17;
												yourself);
										startPosition: 11;
										stopPosition: 17;
										yourself);
								expressionAction: nil;
								assignation:
									(PWBASTAssignation new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTString new
																string: '"/0001/ $Nath$ 27/02/2013"';
																startPosition: 19;
																stopPosition: 44;
																yourself);
														startPosition: 19;
														stopPosition: 44;
														yourself);
												expressionAction: nil;
												startPosition: 19;
												stopPosition: 44;
												yourself);
										startPosition: 18;
										stopPosition: 44;
										yourself);
								startPosition: 11;
								stopPosition: 44;
								yourself);
						startPosition: 11;
						stopPosition: 44;
						yourself).
					(PWBASTOption new
						option:
							(PWBASTAssignationStatement new
								accessOrType:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'encoding';
																startPosition: 46;
																stopPosition: 53;
																yourself);
														arrayDefinition: nil;
														startPosition: 46;
														stopPosition: 53;
														yourself);
												arrayPosition: nil;
												startPosition: 46;
												stopPosition: 53;
												yourself);
										startPosition: 46;
										stopPosition: 53;
										yourself);
								expressionAction: nil;
								assignation:
									(PWBASTAssignation new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTString new
																string: '"ISO-8859-1"';
																startPosition: 55;
																stopPosition: 66;
																yourself);
														startPosition: 55;
														stopPosition: 66;
														yourself);
												expressionAction: nil;
												startPosition: 55;
												stopPosition: 66;
												yourself);
										startPosition: 54;
										stopPosition: 66;
										yourself);
								startPosition: 46;
								stopPosition: 66;
								yourself);
						startPosition: 46;
						stopPosition: 66;
						yourself).
					(PWBASTOption new
						option:
							(PWBASTColumnNameOption new
								expression:
									(PWBASTExpression new
										expression:
											(PWBASTExpressionTerm new
												expressionTerm:
													(PWBASTString new
														string: '"template_xml_ges_dv3"';
														startPosition: 73;
														stopPosition: 94;
														yourself);
												startPosition: 73;
												stopPosition: 94;
												yourself);
										expressionAction: nil;
										startPosition: 73;
										stopPosition: 94;
										yourself);
								startPosition: 68;
								stopPosition: 94;
								yourself);
						startPosition: 68;
						stopPosition: 94;
						yourself).
					(PWBASTOption new
						option:
							(PWBASTAssignationStatement new
								accessOrType:
									(PWBASTAccessOrType new
										accessOrType:
											(PWBASTAccess new
												accessed:
													(PWBASTVariable new
														identifier:
															(PWBASTIdentifier new
																identifier: 'xml';
																startPosition: 96;
																stopPosition: 98;
																yourself);
														arrayDefinition: nil;
														startPosition: 96;
														stopPosition: 98;
														yourself);
												arrayPosition: nil;
												startPosition: 96;
												stopPosition: 98;
												yourself);
										startPosition: 96;
										stopPosition: 98;
										yourself);
								expressionAction: nil;
								assignation:
									(PWBASTAssignation new
										expression:
											(PWBASTExpression new
												expression:
													(PWBASTExpressionTerm new
														expressionTerm:
															(PWBASTString new
																string: '"<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>"';
																startPosition: 100;
																stopPosition: 8091;
																yourself);
														startPosition: 100;
														stopPosition: 8091;
														yourself);
												expressionAction: nil;
												startPosition: 100;
												stopPosition: 8091;
												yourself);
										startPosition: 99;
										stopPosition: 8091;
										yourself);
								startPosition: 96;
								stopPosition: 8091;
								yourself);
						startPosition: 96;
						stopPosition: 8091;
						yourself)};
				startPosition: 1;
				stopPosition: 8092;
				yourself)
]

{ #category : #'as yet unclassified' }
PWBDataWindowParserTest >> testType1 [
	<generated>
	self
		assert: (self parse: 'char(16)' rule: #type)
		equals:
			(PWBASTType new
				type:
					(PWBASTParametrizedType new
						parametrizedType: 'char(16)';
						startPosition: 1;
						stopPosition: 8;
						yourself);
				startPosition: 1;
				stopPosition: 8;
				yourself)
]
