accessing
wiki: aWiki page: aSymbol
	wiki := aWiki wiki.
	pageName := aSymbol.
	titleEditor text: wiki title.
	wiki isTitleEditable
		ifTrue: [ titleEditor beEditable ]
		ifFalse: [ titleEditor beReadOnlyWithSelection ].
	pageNameEditor text: pageName asString.
	pageName = #Main
		ifTrue: [ titleEditor beReadOnlyWithSelection ]
		ifFalse: [ titleEditor beEditable ].
	titleEditor switchToLabel.
	documenter
		wiki: wiki page: pageName;
		read