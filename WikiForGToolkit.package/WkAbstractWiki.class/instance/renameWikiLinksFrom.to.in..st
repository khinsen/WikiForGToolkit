accessing
renameWikiLinksFrom: pageName to: newName in: pageText
	| parser doc nameTransformation renamer changedDoc changedText |
	parser := PRPillarParser new optimize.
	doc := parser parse: pageText.
	renamer := WkWikiLinkRenamer new
					nameTransformation: (Dictionary with: pageName -> newName).
	changedDoc := (renamer executeOn:
							((PRCompilationContext
								withDocument: doc
								withConfiguration: nil)))
					input.
	^ renamer hasModifiedDoc
		ifTrue:[ PRPillarWriter write: changedDoc ]
		ifFalse: [ pageText ]