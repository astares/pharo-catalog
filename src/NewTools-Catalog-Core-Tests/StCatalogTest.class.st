Class {
	#name : #StCatalogTest,
	#superclass : #TestCase,
	#category : #'NewTools-Catalog-Core-Tests-Model'
}

{ #category : #tests }
StCatalogTest >> testInstanceCreation [

	| catalog |
	catalog := StCatalog name: 'Pharo catalog' url: 'http://www.pharo.org/catalog.json'.

	self assert: catalog name equals: 'Pharo catalog'.
	self assert: catalog url equals: 'http://www.pharo.org/catalog.json'.
	
]

{ #category : #tests }
StCatalogTest >> testRegistry [

	| registry |
	registry := StCatalog registry.
	
	self assert: registry notNil.
	self assert: registry isCollection
	

]
