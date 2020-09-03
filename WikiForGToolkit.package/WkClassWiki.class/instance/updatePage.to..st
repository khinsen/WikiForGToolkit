api - accessing
updatePage: aSymbol to: aString
	| code |

	aSymbol = #Main
		ifTrue: [ self wikiClass comment: aString. ^ self ].

	code := String streamContents: [ :s |
		s nextPutAll: (self methodSelectorForPage: aSymbol).
		s crtab; nextPutAll: '"This method was automatically generated."'.
		s crtab; nextPutAll: '<wikiPage: '; nextPutAll: aSymbol storeString; nextPutAll: '>'.
		s crtab; nextPutAll: '^ '.
		s nextPutAll: aString storeString.
	].

	self wikiClass class compile: code classified: 'wikiPages'.	