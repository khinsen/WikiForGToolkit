initialization
initializeTitleEditorElement
	titleEditorElement := BrEditableLabel new
		look: (BrGlamorousEditableLabelLook new
				defaultBackground: Color transparent;
				glamorousRegularFont;
				fontSize: 18);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent];
		text: 'Untitled'.
	titleEditorElement editor
		when: BrTextEditorModifiedEvent 
		do: [ :anEvent |
			self wiki title: anEvent text asString ]