Class {
	#name : #StCatalogTest,
	#superclass : #TestCase,
	#instVars : [
		'catalog'
	],
	#category : #'NewTools-Catalog-Core-Tests-Model'
}

{ #category : #running }
StCatalogTest >> setUp [ 
	super setUp.

	catalog := StCatalog name: 'Pharo Official' url: 'http://www.pharo.org/catalog.json'.
]

{ #category : #tests }
StCatalogTest >> testInstanceCreation [
 
	self assert: catalog name equals: 'Pharo Official'.
	self assert: catalog url equals: 'http://www.pharo.org/catalog.json'.
	
]

{ #category : #tests }
StCatalogTest >> testRegistry [

	| registry |
	registry := StCatalog registry.
	
	self assert: registry notNil.
	self assert: registry isCollection
	

]
