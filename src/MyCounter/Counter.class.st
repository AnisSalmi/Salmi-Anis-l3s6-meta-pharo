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
