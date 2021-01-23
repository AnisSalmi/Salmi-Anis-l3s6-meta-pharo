Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EConstant class >> constant3 [
	<sampleInstance>
	^ self value: 3

]

{ #category : #'as yet unclassified' }
EConstant class >> constant5 [
	<sampleInstance>
	^ self value: 5

]

{ #category : #setting }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : #accessing }
EConstant >> evaluate [
	
	^ value 
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
