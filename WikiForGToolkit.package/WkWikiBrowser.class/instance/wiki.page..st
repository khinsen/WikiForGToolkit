accessing
wiki: aWiki page: aSymbol
	wiki := aWiki wiki.
	pageName := aSymbol.
	titleEditorElement text: wiki title.
	pageNameEditorElement text: pageName asString.
	documenter wiki: wiki page: pageName; read