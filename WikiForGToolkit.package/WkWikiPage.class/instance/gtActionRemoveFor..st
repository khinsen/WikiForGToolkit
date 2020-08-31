inspecting
gtActionRemoveFor: anAction
	<gtAction>
	^ anAction button
			icon: BrGlamorousIcons trash;
			forViewDefinedIn: #gtDocumentFor:;
			priority: 30;
			action: [ :aButton | self remove ]