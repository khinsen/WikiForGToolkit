actions
store: aGtDocument
	| text |
	self 
		assert: [ self container notNil ]
		description: [ 'Container must be non-nil to store a document there' ].
	text := aGtDocument text asString.
	self container store: text inWikiPageNamed: name.
	