initialization
buildHeader
	| header titlebar separator |
	header := BrVerticalPane new
		hMatchParent;
		alignCenterLeft;
		vFitContent.
	titlebar := BlElement new
		labeled: 'Titlebar';
		layout: BlGridLayout new.
		"layout: BlLinearLayout horizontal alignCenterLeft"
	titlebar constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical fitContent ].
	titlebar addChild:
		(self buildPageSelectorButton
			constraintsDo: [ :c |
				c grid horizontal alignLeft.
				c grid vertical alignCenter ]
			yourself).

	titlebar addChildren: (self buildPageNameEditor).
	pageNameEditor constraintsDo: [ :c |
		c grid horizontal alignLeft ].
	titlebar addChild: (self buildTitleEditor).
	titleEditor constraintsDo: [ :c |
		c grid horizontal alignRight ].
	header addChild: titlebar.

	separator := BlElement new labeled: 'Separator'.
	separator background: BrGlamorousColors lightBorderColor.
	separator elevation: (BlRelativeElevation elevation: -1).
	separator constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical exact: 1.
		c ignoreByLayout.
		c ignored vertical alignBottom ].

	header addChild: separator.
	^ header