"
An entry list

"
Class {
	#name : #StCatalogEntryPane,
	#superclass : #SpPresenter,
	#instVars : [
		'listOfEntries'
	],
	#category : #'NewTools-Catalog-UI-Components'
}

{ #category : #specs }
StCatalogEntryPane class >> defaultSpec [

	^  SpBoxLayout newVertical
			add: #listOfEntries;
			yourself
]

{ #category : #showing }
StCatalogEntryPane class >> open [
	<script>
	
	self new openWithSpec
]

{ #category : #initialization }
StCatalogEntryPane >> initializePresenters [

	listOfEntries := self newList.
	
	listOfEntries items: StCatalog example entries.
	listOfEntries display: [:each | each name ]
]
