accessing
wikiPageNamed: aSymbol
	|  pageName |
	pageName := self normalizeWikiPageName: aSymbol. 
	pageName = #Main
		ifTrue: [ ^ WkWikiPage wiki: self name: pageName text: self comment ].
	^ [ self perform: (self methodSelectorForWikiPageNamed: pageName) ]
		on: MessageNotUnderstood do: [ nil ]
		