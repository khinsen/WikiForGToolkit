initialization
buildPageNameLabel
	| acceptButton |
	pageNameEditor := BrEditableLabel new
		look: (BrGlamorousEditableLabelLook new
				defaultBackground: Color transparent;
				glamorousRegularFont;
				fontSize: 18);
		inputFilter: BrTextEditorAlphaNumericInputFilter new;
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent];
		text: 'Untitled'.

	acceptButton := BrButton new
		icon: BrGlamorousVectorIcons accept;
		beSmall;
		look: BrGlamorousButtonWithIconLook new;
		margin: (BlInsets left: 5);
		visibility: BlVisibility gone;
		label: 'Accept';
		constraintsDo: [ :c |
				c grid horizontal alignLeft.
				c grid vertical alignCenter ];
		action: [ self renamePage ];
		addShortcut: (BlShortcut new
			combination: BlKeyCombination return;
			action: [ self renamePage ]).

	pageNameEditor editor
		when: BrTextEditorModifiedEvent 
		do: [ :anEvent |
			anEvent text asString = pageName
				ifTrue: [ acceptButton visibility: BlVisibility gone ]
				ifFalse: [ acceptButton visibility: BlVisibility visible ] ].

	^ { pageNameEditor. acceptButton }