accessing
page: aSymbol
	aSymbol = #Main
		ifTrue: [ ^ self wikiClass comment ].
	^ [ self wikiClass perform: (self methodSelectorForPage: aSymbol) ]
		on: MessageNotUnderstood do: [ nil ]