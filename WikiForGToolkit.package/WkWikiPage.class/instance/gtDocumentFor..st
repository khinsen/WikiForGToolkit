inspecting
gtDocumentFor: aView
	<gtView>
	| aGtDocument |
	aGtDocument := self asGtDocument.
	^ (aGtDocument gtTextFor: aView)
		title: name;
		priority: -1;
		action: [ :anAction | 
			aGtDocument gtSaveActionFor: anAction ];
		action: [ :anAction | 
			aGtDocument gtShowMarkupActionFor: anAction ]