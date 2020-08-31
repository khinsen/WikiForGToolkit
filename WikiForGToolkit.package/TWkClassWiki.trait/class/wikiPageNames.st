accessing
wikiPageNames
	| pageNames |
	pageNames := ((Pragma allNamed: #wikiPage: in: self class)
						collect: [ :p | p argumentAt: 1 ])
					 	asOrderedCollection.
	pageNames sort.
	pageNames addFirst: #Main.
	^ pageNames asArray