Class {
	#name : #DepthCalculatorVisitor,
	#superclass : #Object,
	#category : #VisitorExample
}

{ #category : #visiting }
DepthCalculatorVisitor >> visitLeafNode: aSelfNode [ [ 
	^ 1
	]
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitLiteralValueNode: aRBLiteralValueNode [

	^ self visitLeafNode: aRBLiteralValueNode
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitMessageNode: aRBMessageNode [
	
	^ self visitNodeWithChildren: aRBMessageNode  
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitMethodNode: aRBMethodNode [

	^ self visitNodeWithChildren: aRBMethodNode 
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitNodeWithChildren: aNode [ [ 
	
	^ 1 + (aNode children
		 inject: 0
		into: [ :max :node | max max: (node acceptVisitor: self)])
	
	 ]
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitSelfNode: aSelfNode [

	^ self visitLeafNode: aSelfNode 
]

{ #category : #visiting }
DepthCalculatorVisitor >> visitSequenceNode: aRBSequenceNode [

	^ self visitNodeWithChildren: aRBSequenceNode
]
