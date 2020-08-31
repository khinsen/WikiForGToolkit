testing
exists
	<return: #Boolean>
	^ self container isNotNil and: [ self container hasWikiPageNamed: name ]