accessing - parameter values
referencedPage
	^ referencedPage ifNil: [ referencedPage := self utility 
		valueOf: self referenceParameterName
		in: self parameters 
		value: [ :aValue |
					aValue isString & self isInWiki
						ifTrue: [ (self wiki pageNamed: aValue asSymbol)
									ifNotNil: [ :page | page name ] ]
						ifFalse: [ nil ] ] 
		emptyValue: [ nil ] 
		defaultValue: [ nil ] ]