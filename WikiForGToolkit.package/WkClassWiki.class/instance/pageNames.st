api - accessing
pageNames
	| pageNames |
	pageNames := ((Pragma allNamed: #wikiPage: in: self wikiClass class)
						collect: [ :p | p argumentAt: 1 ])
					 	asOrderedCollection.
	pageNames sort.
	pageNames addFirst: #Main.
	^ pageNames asArray