api - accessing
createOrRetrievePage: aSymbol
	"Return the page whose name is aSymbol. If the page does not exist, create it first."
	^ (self page: aSymbol)
		ifNil: [ | text |
			text := self initialWikiPageContents.
			self updatePage: aSymbol to: text.
			text ]