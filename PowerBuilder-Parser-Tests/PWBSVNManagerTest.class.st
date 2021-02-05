Class {
	#name : #PWBSVNManagerTest,
	#superclass : #TestCase,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
PWBSVNManagerTest >> testRepoName [
	| pwbsvn |
	pwbsvn := PWBSVNManager new repoUrl: 'https://TestCI/'.
	self assert: pwbsvn repoName equals: 'TestCI'.
	pwbsvn repoUrl: 'https://TestCI'.
	self assert: pwbsvn repoName equals: 'TestCI'
]

{ #category : #tests }
PWBSVNManagerTest >> testRepoUrl [
	| pwbsvn |
	pwbsvn := PWBSVNManager new repoUrl: 'https://TestCI/'.
	self assert: pwbsvn repoUrl equals: 'https://TestCI'.
	pwbsvn repoUrl: 'https://TestCI'.
	self assert: pwbsvn repoUrl equals: 'https://TestCI'
]
