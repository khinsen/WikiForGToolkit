accessing
page: aSymbol
	aSymbol = #Main
		ifTrue: [ ^ self wikiClass comment ].
	^ [ self wikiClass perform: (self methodSelectorForWikiPage: aSymbol) ]
		on: MessageNotUnderstood do: [ nil ]