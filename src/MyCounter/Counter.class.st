"
""Counter is a simple concrete class wich supports incrementing and decrementing a counter.
Its API is 
- decrement, increment
- count
Its creation API in message withValue""
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #initialization }
Counter class >> withValue: anInteger [
	

	^ self new count: anInteger.
	
]

{ #category : #accessing }
Counter >> count [
	"return the current value of the value instance variable"
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	"return the current value of the value instance variable"
	count := anInteger 
]

{ #category : #API }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #'as yet unclassified' }
Counter >> increment [ 
	 count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	
	super initialize.	
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', self count printString. 

]
