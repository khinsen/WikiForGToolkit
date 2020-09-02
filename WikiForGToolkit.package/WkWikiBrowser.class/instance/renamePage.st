actions
renamePage
	| newName |
	pageName = #Main ifFalse:
		[ newName := pageNameEditor text.
		  self wiki renamePage: pageName to: newName.
		  pageName := newName ]