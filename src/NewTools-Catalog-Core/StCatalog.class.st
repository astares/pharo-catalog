"
A catalog
"
Class {
	#name : #StCatalog,
	#superclass : #Object,
	#instVars : [
		'name',
		'url',
		'entries'
	],
	#classVars : [
		'Registry'
	],
	#category : #'NewTools-Catalog-Core-Model'
}

{ #category : #examples }
StCatalog class >> example [

	(self name: 'Pharo' url: 'https://raw.githubusercontent.com/astares/pharo-catalog/main/build/scatalog.json') inspect
]

{ #category : #'instance creation' }
StCatalog class >> name: aName url: anURLString [

	^ self new
		  name: aName;
		  url: anURLString;
		  loadCatalogContents;
		  yourself
]

{ #category : #registry }
StCatalog class >> registry [

	^ Registry ifNil: [ Registry := OrderedCollection new ] 
]

{ #category : #accessing }
StCatalog >> entries [

	^entries ifNil: [ entries := OrderedCollection new ]
]

{ #category : #'private - loading' }
StCatalog >> loadCatalogContents [
	"TODO: Add proper exception handling later"
	
	|json ston |
	json := (ZnEasy get: self url) contents.
	ston := STON fromString: json.
	self loadCatalogEntries: ston.
	 
]

{ #category : #'private - loading' }
StCatalog >> loadCatalogEntries: aCollection [ 
		
	entries := aCollection collect: [:each | StCatalogEntry fromDictionary: each ]
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
