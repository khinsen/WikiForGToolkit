accessing
page: aSymbol
	aSymbol = #Main
		ifTrue:
			[ ^ APWikiPage wiki: self name: #Main text: self wikiClass comment ].
	^ [ self wikiClass perform: (self methodSelectorForPage: aSymbol) ]
		on: MessageNotUnderstood
		do: [ nil ]