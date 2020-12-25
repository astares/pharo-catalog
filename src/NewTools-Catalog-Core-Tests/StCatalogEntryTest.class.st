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
StCatalogEntryTest >> testFromDictionary [

	|d entry |
	d := { 
		#name -> 'Sample'.
		#description -> 'Sample project'.
		#baseline -> 'Base'.
		#repository -> 'github://SomeUser/SampleProject'.
		
	 } asDictionary.

	entry := StCatalogEntry fromDictionary: d.
	
	self 
		assert: entry name equals: 'Sample';
		assert: entry description equals: 'Sample project';
		assert: entry baseline equals: 'Base';
		assert: entry repository equals: 'github://SomeUser/SampleProject' 
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
