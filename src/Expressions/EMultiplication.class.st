Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant  constant5.
	ep2 := EConstant  constant3.
		
	^ self left: ep1 right: ep2	
	
]

{ #category : #'instance creation' }
EMultiplication class >> left: anExpression right: anExpression2 [ 

	^self new left: anExpression; right: anExpression2. 
]

{ #category : #accessing }
EMultiplication >> evaluate [ 
	
	^ left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anExpression [ 

	left := anExpression 
]

{ #category : #printing }
EMultiplication >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream. 
	aStream nextPutAll: ' * '.
	right printOn: aStream. 
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
EMultiplication >> right: anExpression [ 

	right := anExpression 
]
