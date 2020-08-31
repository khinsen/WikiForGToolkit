accessing
customProjectAttributes
	^ self isGTImage
			ifTrue: [ #(gtoolkit) ]
			ifFalse: [ #(non-gtoolkit) ]