Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DieHandle >> + aDicable [

	^ aDicable sumWithHandle: self.
]

{ #category : #adding }
DieHandle >> addDie: aDie [ 

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [ 

	^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [ 
	
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.

	
]

{ #category : #accessing }
DieHandle >> maxValue [ 

	^ (dice collect: [:each | each faces]) sum
]

{ #category : #playing }
DieHandle >> roll [ 
	
	^ (dice collect: [:each | each roll]) sum
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithDie: aDie [
	
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each].
	handle addDie: aDie.
	^ handle 
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithHandle: aDieHandle [

	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each].
	aDieHandle dice do: [ :each | handle addDie: each].
	^ handle
]
