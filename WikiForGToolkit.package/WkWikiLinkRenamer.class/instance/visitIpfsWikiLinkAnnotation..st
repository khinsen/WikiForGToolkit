visiting-annotations
visitIpfsWikiLinkAnnotation: anIpfsWikiLinkAnnotation
	| name newName |
	name := anIpfsWikiLinkAnnotation parameters at: #name.
	newName := nameTransformation at: name ifAbsent: [ name ].
	newName = name ifFalse:
		[ anIpfsWikiLinkAnnotation parameterAt: #name put: newName.
		  hasModifiedDoc := true ].