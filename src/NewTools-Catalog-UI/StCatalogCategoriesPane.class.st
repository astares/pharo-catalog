"
A pane showing the catalog entries per category
"
Class {
	#name : #StCatalogCategoriesPane,
	#superclass : #SpPresenter,
	#instVars : [
		'categoriesTree'
	],
	#category : #'NewTools-Catalog-UI-Components'
}

{ #category : #specs }
StCatalogCategoriesPane class >> defaultSpec [

	^  SpBoxLayout newVertical
			add: #categoriesTree;
			yourself
]

{ #category : #showing }
StCatalogCategoriesPane class >> open [
	<script>
	
	self new openWithSpec
]

{ #category : #initialization }
StCatalogCategoriesPane >> initializePresenters [

	categoriesTree := self newTreeTable.
	
	 
]
