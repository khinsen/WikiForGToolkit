accessing
page: aSymbol
	pageName := aSymbol.
	pageNameEditorElement text: pageName asString.
	documenter forWiki: wiki page: pageName; read