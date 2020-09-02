private - styling
styleLinkInText: aBlRope
	| aNodeToStyle linkColor attributes |
	linkColor := self utility linkColor: self isPageDefined.
	attributes := Array
					"Change the color of the link text"
					with: (BlTextForegroundAttribute new paint: linkColor)
					"Underline it in the same color when the cursor hovers over it"
					with: (BrTextHoverStylableAttribute new
								attribute: (BlTextUnderlineAttribute new paint: linkColor))
					"Define the click action"
					with: (BrTextClickAttribute new
								beNotOverwritableByStyler;
								action: [ :text :target :editor :event | 
											self browseReferenceFrom: event ]).

	aNodeToStyle := self utility linkNodeForAnnotation: self.
	(aBlRope  
		from: aNodeToStyle start 
		to: (aNodeToStyle start max: aNodeToStyle stop))
			attributes: attributes.
