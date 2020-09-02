accessing
page: aSymbol
	pageName := aSymbol.
	pageNameEditor text: pageName asString.
	documenter wiki: wiki page: pageName; read