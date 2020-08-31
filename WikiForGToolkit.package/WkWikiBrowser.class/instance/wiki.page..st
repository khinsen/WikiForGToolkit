accessing
wiki: anIpfsWiki page: aSymbol
	wiki := anIpfsWiki.
	pageName := aSymbol.
	titleEditorElement text: wiki title.
	pageNameEditorElement text: pageName asString.
	documenter ipfsDocument: (wiki pageNamed: pageName); read