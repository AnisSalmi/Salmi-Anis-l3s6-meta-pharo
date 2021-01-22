Class {
	#name : #EConstant,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant >> evaluate [
	
	^ value 
]

{ #category : #arithmetic }
EConstant >> negated [

	^ ENegation new expression: self
]

{ #category : #printing }
EConstant >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: value.
	aStream nextPutAll: ')'
	
]

{ #category : #accessing }
EConstant >> value: anInteger [
	
	value := anInteger
]
