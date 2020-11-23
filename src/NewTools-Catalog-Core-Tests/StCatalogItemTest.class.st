Class {
	#name : #StCatalogItemTest,
	#superclass : #TestCase,
	#instVars : [
		'item'
	],
	#category : #'NewTools-Catalog-Core-Tests-Model'
}

{ #category : #running }
StCatalogItemTest >> setUp [ 

	super setUp.
	item := StCatalogItem name: 'Scheduler'
]

{ #category : #tests }
StCatalogItemTest >> testTags [

	|tags|
	tags := item tags. 

	self 
		assert: tags isCollection;
		assert: tags isEmpty;
		deny: item hasTags
]
