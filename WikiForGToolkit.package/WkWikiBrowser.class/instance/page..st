accessing
page: aSymbol
	pageName := aSymbol.
	pageNameEditorElement text: pageName asString.
	documenter wiki: wiki page: pageName; read