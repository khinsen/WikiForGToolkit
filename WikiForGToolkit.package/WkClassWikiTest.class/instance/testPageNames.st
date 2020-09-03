testing
testPageNames
	wiki createOrRetrievePage: #Foo.
	wiki createOrRetrievePage: #Bar.
	wiki createOrRetrievePage: #Baz.
	self assert: wiki pageNames
		  equals: #(Main Bar Baz Foo)