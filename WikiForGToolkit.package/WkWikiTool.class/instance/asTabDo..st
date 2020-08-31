api - converting
asTabDo: aBlock
	| aTab |
	aTab := BrTab new
		look: BrGlamorousTabSwitcherWithIconLook;
		label: self name;
		icon: (BrGlamorousVectorIcons largebranching asElement asScalableElement size: 16@16);
		stencil: [ self asElementDo: [ :anElement | anElement ] ].
	aBlock cull: aTab.