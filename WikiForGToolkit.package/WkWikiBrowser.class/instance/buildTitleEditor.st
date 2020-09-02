initialization
buildTitleEditor
	titleEditor := BrEditableLabel new
		look: (BrGlamorousEditableLabelLook new
				defaultBackground: Color transparent;
				glamorousRegularFont;
				fontSize: 18);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent];
		text: 'Untitled'.

	titleEditor editor
		when: BrTextEditorModifiedEvent 
		do: [ :anEvent |
			self wiki isTitleEditable ifTrue:
				[ self wiki title: anEvent text asString ] ].

	^ titleEditor