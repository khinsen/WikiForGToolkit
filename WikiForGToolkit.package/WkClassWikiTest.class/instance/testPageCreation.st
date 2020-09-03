testing
testPageCreation
	"Creation of an empty page"
	self assert: (wiki createOrRetrievePage: #Bar)
		  equals: wiki initialPageContents.
	"Creation of a page with given content"
	wiki updatePage: #Foo to: '!Page Foo'.
	self assert: (wiki page: #Foo) equals: '!Page Foo'.