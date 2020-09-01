api - accessing
removePage: aSymbol
	self wikiClass class removeSelector: (self methodSelectorForWikiPage: aSymbol)