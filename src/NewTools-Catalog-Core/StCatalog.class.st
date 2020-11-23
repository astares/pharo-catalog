"
A catalog
"
Class {
	#name : #StCatalog,
	#superclass : #Object,
	#instVars : [
		'name',
		'sourceURL'
	],
	#category : #'NewTools-Catalog-Core-Model'
}

{ #category : #'instance creation' }
StCatalog class >> name: aName sourceURL: anURLString [

	^self new
		name: aName;
		sourceURL: anURLString;
		yourself
		
]

{ #category : #accessing }
StCatalog >> name [
	^ name
]

{ #category : #accessing }
StCatalog >> name: anObject [
	name := anObject
]

{ #category : #accessing }
StCatalog >> sourceURL [
	^ sourceURL
]

{ #category : #accessing }
StCatalog >> sourceURL: anObject [
	sourceURL := anObject
]
