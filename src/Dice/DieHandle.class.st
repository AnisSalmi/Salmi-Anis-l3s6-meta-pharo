Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #adding }
DieHandle >> addDie: aDie [ 

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [ 

	^ dice
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [ 
	
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.

	
]

{ #category : #'as yet unclassified' }
DieHandle >> maxValue [ 

	^ (dice collect: [:each | each faces]) sum
]

{ #category : #playing }
DieHandle >> roll [ 
	
	^ (dice collect: [:each | each roll]) sum
]
