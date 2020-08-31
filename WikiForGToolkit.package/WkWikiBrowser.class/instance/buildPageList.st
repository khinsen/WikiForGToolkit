initialization
buildPageList
	^ BrSimpleList new
		itemStencil: [
			BrLabel new
				hMatchParent;
				look: BrGlamorousLabelLook new;
				padding: (BlInsets all: 5);
				addEventHandler: (BlEventHandler on: BlClickEvent do: [ :anEvent | self page: anEvent target text asString ]) ];
		itemDataBinder: [ :eachElement :eachPageName :eachIndex | eachElement text: eachPageName ];
		items: (self wiki pageNames);
		lookDo: [ :aLook | aLook listElement constraintsDo: [ :c | c maxHeight: 200 ] ];
		layout: BlLinearLayout vertical;
		padding: (BlInsets all: 5);
		vFitContent;
		hExact: 200