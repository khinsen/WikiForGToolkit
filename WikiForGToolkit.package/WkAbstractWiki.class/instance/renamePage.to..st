api
renamePage: aSymbol to: newPageName
	"Rename the page names aSymbol to newPageName
	 and update all Wiki links pointing to it."
	aSymbol = newPageName ifTrue: [ ^ self ].
	(self hasPage: aSymbol) ifFalse:
		[ self error: 'No page named ', aSymbol ].
	(self hasPage: newPageName) ifTrue:
		[ self error: 'There is already a page named ', newPageName ].
	self pageNames do: [ :each |
		| pageText newPageText |
		pageText := self page: each.
		newPageText := self renameWikiLinksFrom: aSymbol to: newPageName in: pageText.
		newPageText = pageText ifFalse: [ self updatePage: each to: newPageText ] ].
	self updatePage: newPageName to: (self page: aSymbol).
	self removePage: aSymbol