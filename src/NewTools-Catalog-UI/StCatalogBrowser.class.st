"
The catalog browser shows entries of a software catalog available for the specific Pharo version
"
Class {
	#name : #StCatalogBrowser,
	#superclass : #SpPresenter,
	#instVars : [
		'notebook',
		'toolBar'
	],
	#category : #'NewTools-Catalog-UI-Base'
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

{ #category : #'private - accessing' }
StCatalogBrowser >> categoriesPage [

	^ SpNotebookPage
		  title: 'Categories'
		  icon: (self iconNamed: #nautilusIcon)
		  provider: [ StCatalogCategoriesPane new ]
]

{ #category : #'private - accessing' }
StCatalogBrowser >> entriesPage [

	^ SpNotebookPage
		  title: 'Entries'
		  icon: (self iconNamed: #config)
		  provider: [ StCatalogEntryPane new ]
]

{ #category : #initialization }
StCatalogBrowser >> initializePresenters [

	notebook := self newNotebook.
	notebook 
		addPage: self entriesPage;
		addPage: self categoriesPage
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
		changePackageSet: { self class package };
		yourself.
		 
	window := browser open.
	path := (window submorphs detect: [ :each | (each isKindOf: MorphTreeMorph) ]) nodeList.
	browser expandNodePath: path first contents first contents first path.
]

{ #category : #defaults }
StCatalogBrowser >> title [
	"Return a title for the receivers standalone window"

   ^'Pharo Catalog'
]
