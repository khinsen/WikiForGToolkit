initialization
buildPageSelectorButton
	|  dropdownLook dropdownButton |
	dropdownButton :=
		[ BrButton new
			look: BrGlamorousButtonWithIconLook
				- BrGlamorousButtonWithLabelTooltipLook
				- BrGlamorousButtonExteriorLook;
			icon: BrGlamorousIcons hamburger;
			yourself ].
	dropdownLook :=
		BrGlamorousWithDropdownLook
			handle:  dropdownButton
			content: [ self buildPageList ].
	^ BrButton new
		label: 'Wiki Pages';
		look: BrGlamorousButtonWithIconLook
			- BrGlamorousButtonExteriorLook
			+ dropdownLook;
		icon: BrGlamorousIcons hamburger asElement;
		beLarge;
		yourself