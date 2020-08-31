initialization
initializePageNameEditorElement
	pageNameEditorElement := BrEditableLabel new
		look: (BrGlamorousEditableLabelLook new
				defaultBackground: Color transparent;
				glamorousRegularFont;
				fontSize: 18);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent];
		text: 'Untitled'.
	pageNameEditorElement editor
		when: BrTextEditorModifiedEvent 
		do: [ :anEvent |
			| newName |
			newName := anEvent text asString asSymbol.
			self wiki renamePage: pageName to: newName.
			pageName := newName ]