Class {
	#name : #CHMethodeScope,
	#superclass : #Object,
	#instVars : [
		'receiver',
		'variables',
		'parentScope'
	],
	#category : #'Champollion-Core'
}

{ #category : #testing }
CHMethodeScope >> includesKey: aString [ 
	^ variables includesKey: aString 
]

{ #category : #testing }
CHMethodeScope >> initialize [  	
	super initialize .
	variables := Dictionary new.
]

{ #category : #testing }
CHMethodeScope >> parentScope [ 
	^ parentScope 
]

{ #category : #testing }
CHMethodeScope >> parentScope: aScope [ 
	parentScope := aScope  
]

{ #category : #testing }
CHMethodeScope >> read: aString [ 
	^ variables at: aString  
]

{ #category : #testing }
CHMethodeScope >> receiver [  
	^ receiver 

]

{ #category : #testing }
CHMethodeScope >> receiver: aCHInterpretable [ 
	receiver := aCHInterpretable 

]

{ #category : #testing }
CHMethodeScope >> scopeDefining: aString [  
	(variables includesKey: aString )
	ifTrue: [ ^ self ].
	^ self parentScope scopeDefining: aString 

]

{ #category : #testing }
CHMethodeScope >> write: aString withValue: aValue [ 
	variables at: aString put: aValue 

]
