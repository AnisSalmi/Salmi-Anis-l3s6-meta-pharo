Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'instance creation' }
Die class >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."
	

	^ self new faces: aNumber; yourself 

]

{ #category : #arithmetic }
Die >> + aDicable [ 
	
	^ aDicable sumWithDie: self
]

{ #category : #accessing }
Die >> faces [
	
	^ faces
]

{ #category : #accessing }
Die >> faces: aNumber [
	
	faces := aNumber
]

{ #category : #initialization }
Die >> initialize [			
	
	super initialize.	
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPutAll: ')'
]

{ #category : #playing }
Die >> roll [
	
	^ faces atRandom 
]

{ #category : #'as yet unclassified' }
Die >> sumWithDie: aDie [

	^ DieHandle new 
		addDie: self;
		addDie: aDie;
		yourself.
]

{ #category : #'as yet unclassified' }
Die >> sumWithHandle: aDieHandle [

	| handle |
	handle := DieHandle  new.
	aDieHandle dice do: [ :each | handle addDie: each].
	handle addDie: self.
	^ handle
]
