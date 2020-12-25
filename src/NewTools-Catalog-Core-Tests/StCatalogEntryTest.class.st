Class {
	#name : #StCatalogEntryTest,
	#superclass : #TestCase,
	#instVars : [
		'item'
	],
	#category : #'NewTools-Catalog-Core-Tests-Model'
}

{ #category : #running }
StCatalogEntryTest >> setUp [ 

	super setUp.
	item := StCatalogEntry name: 'Scheduler'
]

{ #category : #tests }
StCatalogEntryTest >> testTags [

	|tags|
	tags := item tags. 

	self 
		assert: tags isCollection;
		assert: tags isEmpty;
		deny: item hasTags
]
