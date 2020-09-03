*WikiForGToolkit
wiki
	[ ^ self classToComment realClass wiki]
	on: MessageNotUnderstood do: [ ^ nil ].