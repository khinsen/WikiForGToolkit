api - accessing
pageNames
	| pageNames |
	pageNames := ((Pragma allNamed: #wikiPage: in: self wikiClass)
						collect: [ :p | p argumentAt: 1 ])
					 	asOrderedCollection.
	pageNames sort.
	pageNames addFirst: #Main.
	^ pageNames asArray