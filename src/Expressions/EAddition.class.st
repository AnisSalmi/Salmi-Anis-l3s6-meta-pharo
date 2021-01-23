Class {
	#name : #EAddition,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant  constant5. 
	ep2 := EConstant  constant3.
	^ self left: ep1 right: ep2
]

{ #category : #'instance creation' }
EAddition class >> left: anExpression right: anExpression2 [

	^ self new left: anExpression; right: anExpression2 
]

{ #category : #accessing }
EAddition >> evaluate [ 
	
	^ left evaluate + right evaluate
]

{ #category : #accessing }
EAddition >> left: anExpression [ 

	left := anExpression 
]

{ #category : #printing }
EAddition >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream. 
	aStream nextPutAll: ' + '.
	right printOn: aStream. 
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EAddition >> right: anExpression [

	right := anExpression 
]
