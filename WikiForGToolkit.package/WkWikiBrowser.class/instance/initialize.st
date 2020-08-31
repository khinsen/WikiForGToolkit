initialization
initialize
	super initialize.
	self
		layout: BlLinearLayout vertical;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ].
	self initializePageNameEditorElement.
	self initializeTitleEditorElement.
	self initializeDocumenter.
	self addChild: (self buildHeader) as: #header.
	self addChild: documenter as: #documenter.