initialization
buildPageSelectorButton
	^ BrButton new
		label: 'Wiki Pages';
		look: BrGlamorousButtonWithIconLook + (BrGlamorousWithDropdownLook
			handle: [
				BrButton new
					look: BrGlamorousButtonWithIconLook - BrGlamorousButtonWithLabelTooltipLook - BrGlamorousButtonExteriorLook;
					icon: BrGlamorousIcons hamburger;
					yourself ]
			content: [ self buildPageList ]);
		icon: BrGlamorousIcons hamburger asElement;
		beLarge;
		yourself