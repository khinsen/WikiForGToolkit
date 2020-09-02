accessing - parameter values
createReferencedPage
	self isInWiki ifFalse: [ ^ nil ].
	^ referencedPage ifNil: [
		self parameters
			at: #name
			ifPresent: [ :name |
				"If the annotation has a 'name' parameter
				without a value, it appears as a Boolean
				of value true, so we must test for isString."
				name isString
					ifTrue: [ | pageName |
								pageName := name asSymbol.
								self wiki createOrRetrievePage: pageName.
								pageName ] ]
			ifAbsent: [ nil ] ]