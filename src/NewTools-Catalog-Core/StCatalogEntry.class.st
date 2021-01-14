"
An item in a catalog
"
Class {
	#name : #StCatalogEntry,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'tags',
		'baseline',
		'repository',
		'load'
	],
	#category : #'NewTools-Catalog-Core-Model'
}

{ #category : #'instance creation' }
StCatalogEntry class >> fromDictionary: aDictionary [

	| entry tagLine |
	entry := self name: (aDictionary at: #name).
	entry 
		description: (aDictionary at: #description ifAbsent: '');
		repository: (aDictionary at: #repository ifAbsent: '');
		baseline: (aDictionary at: #baseline ifAbsent: '');
		load: (aDictionary at: #load ifAbsent: '').
	tagLine := (aDictionary at: #tags ifAbsent: '').		
	entry tags: (tagLine substrings: (CharacterSet newFrom: ' ,')).
	^entry
	
	
]

{ #category : #'instance creation' }
StCatalogEntry class >> name: aName [

	^ self new
		name: aName;
		yourself
]

{ #category : #accessing }
StCatalogEntry >> baseline [

	^ baseline
]

{ #category : #accessing }
StCatalogEntry >> baseline: anObject [

	baseline := anObject
]

{ #category : #accessing }
StCatalogEntry >> description [

	^ description
]

{ #category : #accessing }
StCatalogEntry >> description: anObject [

	description := anObject
]

{ #category : #testing }
StCatalogEntry >> hasTags [ 

	^ self tags notEmpty
]

{ #category : #accessing }
StCatalogEntry >> load [

	^ load
]

{ #category : #accessing }
StCatalogEntry >> load: anObject [

	load := anObject
]

{ #category : #accessing }
StCatalogEntry >> name [
	^ name
]

{ #category : #accessing }
StCatalogEntry >> name: anObject [
	name := anObject
]

{ #category : #accessing }
StCatalogEntry >> repository [

	^ repository
]

{ #category : #accessing }
StCatalogEntry >> repository: anObject [

	repository := anObject
]

{ #category : #accessing }
StCatalogEntry >> tags [

	^ tags ifNil: [ tags := OrderedCollection new ]
]

{ #category : #accessing }
StCatalogEntry >> tags: anObject [
	tags := anObject
]
