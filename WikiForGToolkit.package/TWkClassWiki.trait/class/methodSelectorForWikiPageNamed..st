accessing
methodSelectorForWikiPageNamed: aSymbol
	^ ('wikiPage', (self normalizeWikiPageName: aSymbol)) asSymbol