accessing - parameter values
createReferencedPage
	^ self referencedPage ifNil: [ referencedPage := self utility 
		valueOf: self constants nameParameterName
		in: self parameters
		value: [ :aValue |
					self isInWiki
						ifTrue: [ | pageName |
									pageName := aValue asSymbol.
								 	self wiki createOrRetrievePageNamed: pageName.
									pageName ]
						ifFalse: [ nil ] ]
		emptyValue: [ nil ] 
		defaultValue: [ nil ] ]