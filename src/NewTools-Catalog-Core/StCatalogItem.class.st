"
An item in a catalog
"
Class {
	#name : #StCatalogItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'tags'
	],
	#category : #'NewTools-Catalog-Core-Model'
}

{ #category : #'instance creation' }
StCatalogItem class >> name: aName [

	^ self new
		name: aName;
		yourself
]

{ #category : #testing }
StCatalogItem >> hasTags [ 

	^ self tags notEmpty
]

{ #category : #accessing }
StCatalogItem >> name [
	^ name
]

{ #category : #accessing }
StCatalogItem >> name: anObject [
	name := anObject
]

{ #category : #accessing }
StCatalogItem >> tags [

	^ tags ifNil: [ tags := OrderedCollection new ]
]

{ #category : #accessing }
StCatalogItem >> tags: anObject [
	tags := anObject
]
