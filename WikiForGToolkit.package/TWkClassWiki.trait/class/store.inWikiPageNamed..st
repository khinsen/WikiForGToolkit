accessing
store: aString inWikiPageNamed: aSymbol
	| pageName code |

	pageName := self normalizeWikiPageName: aSymbol. 

	pageName = #Main
		ifTrue: [ self comment: aString. ^ self ].

	code := String streamContents: [ :s |
		s nextPutAll: (self methodSelectorForWikiPageNamed: aSymbol).
		s crtab; nextPutAll: '"This method was automatically generated."'.
		s crtab; nextPutAll: '<wikiPage: '; nextPutAll: pageName storeString; nextPutAll: '>'.
		s crtab; nextPutAll: '^APWikiPage'.
		s crtab: 2; nextPutAll: 'wiki: self'.
		s crtab: 2; nextPutAll: 'name: '; nextPutAll: pageName storeString.
		s crtab: 2; nextPutAll: 'text: '.
		s cr; nextPutAll: aString storeString.
	].

	self class compile: code classified: 'wikiPages'.