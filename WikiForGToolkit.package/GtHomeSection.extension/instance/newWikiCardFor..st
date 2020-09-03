*WikiForGToolkit
newWikiCardFor: aWiki
	^ self
		newHeaderCardWithTitle: 'Wiki'
		description: aWiki title
		size: 150 @ 200
		content:
			((GtDocumenter new
				text: (aWiki createOrRetrievePage: #Main))
				exact: 300 @ 400;
				beInSingleCompositionLayer;
				asScalableElement)
		action: [ :card | 
			self
				showSpaceWithTitle: aWiki title
				with: (GtPager createWrappedOn:
						(WkWikiBrowser forWiki: aWiki))
				from: card ].