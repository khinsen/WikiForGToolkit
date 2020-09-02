initialization
initialize
	super initialize.
	self
		layout: BlLinearLayout vertical;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
	self addChild: (self buildHeader) as: #header.
	self addChild: (self buildDocumenter) as: #documenter.