accessing
createOrRetrieveWikiPageNamed: aSymbol
	|  pageName |
	pageName := self normalizeWikiPageName: aSymbol. 
	^ (self wikiPageNamed: name)
		ifNil: [ ^ (WkWikiPage wiki: self name: pageName text: self initialWikiPageContents) store ]
