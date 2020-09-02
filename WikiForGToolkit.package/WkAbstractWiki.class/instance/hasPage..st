testing
hasPage: aSymbol
	"Return true if the page named aSymbol exists."
	^ (self page: aSymbol) isNotNil