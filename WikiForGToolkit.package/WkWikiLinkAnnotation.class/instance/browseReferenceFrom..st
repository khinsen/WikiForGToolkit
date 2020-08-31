private - actions
browseReferenceFrom: anEvent
	anEvent modifiers isShift ifTrue: [ ^ self ].
	self isInWiki ifFalse: [ self inform: 'Wiki link not in a Wiki' ].
	self isPageDefined ifFalse: [ self createReferencedPage ].
	anEvent target phlow spawnTool: (WkWikiTool new wiki: self wiki page: self referencedPage)