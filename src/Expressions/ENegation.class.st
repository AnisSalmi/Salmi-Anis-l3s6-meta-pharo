Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation class >> expression: anExpression [
	
	^self new expression: anExpression
]

{ #category : #'public access' }
ENegation >> evaluate [ 
	
	^ expression evaluate  negated.
	
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	
	expression := anExpression 
]