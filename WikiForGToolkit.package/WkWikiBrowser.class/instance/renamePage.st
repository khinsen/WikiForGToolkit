actions
renamePage
	| newName |
	pageName = #Main ifFalse:
		[ newName := pageNameEditor text asString asSymbol.
		  self wiki renamePage: pageName to: newName.
		  pageName := newName ]