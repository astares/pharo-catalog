Class {
	#name : #StCatalogBrowser,
	#superclass : #SpPresenter,
	#instVars : [
		'notebook',
		'toolBar'
	],
	#category : #'NewTools-Catalog-Core-Spec'
}

{ #category : #specs }
StCatalogBrowser class >> defaultSpec [

	^ SpBoxLayout newVertical
			add: #notebook;
			yourself
]

{ #category : #showing }
StCatalogBrowser class >> open [
	<script>
	
	self new openWithSpec
	
]

{ #category : #'private - building' }
StCatalogBrowser >> buildSettingsToolBarItem [
		
	^ SpToolbarButtonPresenter new
		label: 'Settings';
		icon: (SettingBrowser iconNamed: #smallConfigurationIcon);
		help: 'Open settings';
		action: [ self openSettings ];
		yourself
]

{ #category : #'private - building' }
StCatalogBrowser >> buildToolBar [
	
	^ self newToolbar 		 
		addItemRight: self buildSettingsToolBarItem;		 			 			
		yourself
]

{ #category : #initialization }
StCatalogBrowser >> initializePresenters [

	notebook := self newNotebook.
]

{ #category : #initialization }
StCatalogBrowser >> initializeWindow: aWindowPresenter [
	"I'm called whenever the component will be displayed in a window (or dialog). 
	 This is usually attained sending #openWithSpec or #openDialogWithSpec."
	
	super initializeWindow: aWindowPresenter.
	aWindowPresenter 
		toolbar: (toolBar := self buildToolBar) 
]

{ #category : #actions }
StCatalogBrowser >> openSettings [ 
	<script>
	
	| browser window path |
	browser := SettingBrowser new 
		changePackageSet: { self package };
		yourself.
		 
	window := browser open.
	path := (window submorphs detect: [ :each | (each isKindOf: MorphTreeMorph)  ]) nodeList.
	browser expandNodePath: path first contents first contents first path.
]

{ #category : #defaults }
StCatalogBrowser >> title [
	"Return a title for the receivers standalone window"

   ^'Pharo Catalog'
]
