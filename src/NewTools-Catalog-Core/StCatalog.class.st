"
A catalog
"
Class {
	#name : #StCatalog,
	#superclass : #Object,
	#instVars : [
		'name',
		'url'
	],
	#classVars : [
		'Registry'
	],
	#category : #'NewTools-Catalog-Core-Model'
}

{ #category : #'instance creation' }
StCatalog class >> name: aName url: anURLString [

	^ self new
		  name: aName;
		  url: anURLString;
		  yourself
]

{ #category : #registry }
StCatalog class >> registry [

	^ Registry ifNil: [ Registry := OrderedCollection new ] 
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
StCatalog >> url [
	^ url
]

{ #category : #accessing }
StCatalog >> url: anObject [
	url := anObject
]
