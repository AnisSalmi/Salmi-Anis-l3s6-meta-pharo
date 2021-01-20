"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestDice,
	#superclass : #PackageManifest,
	#category : #'Dice-Manifest'
}

{ #category : #'code-critics' }
ManifestDice class >> ruleRBCascadedNextPutAllsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Die #printOn: #false)) #'2021-01-20T21:24:14.554533+01:00') )
]

{ #category : #'code-critics' }
ManifestDice class >> ruleReNoPrintStringInPrintOnRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Die #printOn: #false)) #'2021-01-20T21:24:23.388688+01:00') )
]
