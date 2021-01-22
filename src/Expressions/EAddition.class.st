Class {
	#name : #EAddition,
	#superclass : #Object,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EAddition >> evaluate [ 
	
	^ left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> left: anExpression [ 

	left := anExpression 
]

{ #category : #'as yet unclassified' }
EAddition >> negated [ 

	^ ENegation new expression: self 
]

{ #category : #printing }
EAddition >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: left.
	aStream nextPutAll: '+'.
	aStream print: right.
	aStream nextPutAll: ')'
]

{ #category : #accessing }
EAddition >> right: anExpression [

	right := anExpression 
]
