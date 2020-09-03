api - accessing
removePage: aSymbol
	self wikiClass class removeSelector: (self methodSelectorForPage: aSymbol)