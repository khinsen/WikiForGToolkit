testing
hasWikiPageNamed: aSymbol
	^ aSymbol = #Main
		or: [ self respondsTo: (self methodSelectorForWikiPageNamed: aSymbol) ]