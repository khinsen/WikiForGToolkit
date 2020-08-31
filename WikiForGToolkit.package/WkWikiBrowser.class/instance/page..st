accessing
page: aSymbol
	pageName := aSymbol.
	pageNameEditorElement text: pageName asString.
	documenter ipfsDocument: (wiki pageNamed: pageName); read